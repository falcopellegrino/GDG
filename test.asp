<style>
    body {
        padding: 50px;
        font-family: sans-serif;
        
        /* touch-action:none;
        -ms-touch-action:none; */
    }

    #box {
        width:  100px;
        height: 100px;
        background-color: red;
    }
</style>

<script src="js/promise-polyfill-master/promise.js"></script>
<script src="js/TouchPolyfill-master/touchpolyfill.js"></script>




<script type="text/javascript">




// let myFirstPromise = new Promise((resolve, reject) => {
var myFirstPromise = new Promise(function(resolve, reject) {
    
    setTimeout(function(){
      resolve("Success!"); // Yay! Everything went well!
    }, 250);
  });
  
  //myFirstPromise.then((successMessage) => {
  myFirstPromise.then(function(successMessage) {
    // successMessage is whatever we passed in the resolve(...) function above.
    // It doesn't have to be a string, but if it is only a succeed message, it probably will be.

    alert("Yay! " + successMessage);
  });



    function startup() {
        var el =document.body;

        // if (window.addEventListener) {
            el.addEventListener("touchstart", handleStart, false);
            el.addEventListener("touchend", handleEnd, false);
            el.addEventListener("touchcancel", handleCancel, false);
            el.addEventListener("touchleave", handleEnd, false);
            el.addEventListener("touchmove", handleMove, false);
        // } else if (window.attachEvent) {
        //     el.attachEvent("touchstart", handleStart);
        //     el.attachEvent("touchend", handleEnd);
        //     el.attachEvent("touchcancel", handleCancel);
        //     el.attachEvent("touchleave", handleEnd);
        //     el.attachEvent("touchmove", handleMove);
        // }


        log("initialized.");
    }

    var ongoingTouches = new Array;

    var Coordinates = function(x, y)
    {
        this.x = x;
        this.y = y;
        this.getX = function() { return x; }
        this.getY = function() { return y; }
    }
    var arrCoordinates = [];


    function handleStart(evt) {
        
        //  log("touchstart.");
        var el = document.getElementsByTagName("canvas")[0];
        var ctx = el.getContext("2d");
        var touches = evt.changedTouches;
        var offset = findPos(el);  
        
        for (var i = 0; i < touches.length; i++) {
            if(touches[i].clientX-offset.x >0 && touches[i].clientX-offset.x < parseFloat(el.width) && touches[i].clientY-offset.y >0 && touches[i].clientY-offset.y < parseFloat(el.height)){
                evt.preventDefault();
                //log("touchstart:" + i + "...");
                ongoingTouches.push(copyTouch(touches[i]));
                var color = colorForTouch(touches[i]);
                ctx.beginPath();
                ctx.arc(touches[i].clientX-offset.x, touches[i].clientY-offset.y, 4, 0, 2 * Math.PI, false); // a circle at the start
                ctx.fillStyle = color;
                ctx.fill();
                //log("touchstart:" + i + ".");
                log("----->START");
            }
        }
    }

    function handleMove(evt) {

        var el = document.getElementsByTagName("canvas")[0];
        var ctx = el.getContext("2d");
        var touches = evt.changedTouches;
        var offset = findPos(el);

        for (var i = 0; i < touches.length; i++) {
            if(touches[i].clientX-offset.x >0 && touches[i].clientX-offset.x < parseFloat(el.width) && touches[i].clientY-offset.y >0 && touches[i].clientY-offset.y < parseFloat(el.height)){
                evt.preventDefault();
                var color = colorForTouch(touches[i]);
                var idx = ongoingTouchIndexById(touches[i].identifier);
        
                if (idx >= 0) {
                //log("continuing touch " + idx);
                ctx.beginPath();

                //log("ctx.moveTo(" + ongoingTouches[idx].clientX + ", " + ongoingTouches[idx].clientY + ");");
                if(arrCoordinates.length == 0){
                    arrCoordinates.push(new Coordinates(ongoingTouches[idx].clientX, ongoingTouches[idx].clientY));
                    log("Starting   at:X=" + arrCoordinates[0].getX() + "|Y=" + arrCoordinates[0].getY() + "|")
                }

                ctx.moveTo(ongoingTouches[idx].clientX-offset.x, ongoingTouches[idx].clientY-offset.y);
                //log("ctx.lineTo(" + touches[i].clientX + ", " + touches[i].clientY + ");");
                arrCoordinates.push(new Coordinates(ongoingTouches[idx].clientX, ongoingTouches[idx].clientY));
                log("Continuing at:X=" + arrCoordinates[arrCoordinates.length-1].getX() + "|Y=" + arrCoordinates[arrCoordinates.length-1].getY() + "|")


                ctx.lineTo(touches[i].clientX-offset.x, touches[i].clientY-offset.y);
                ctx.lineWidth = 4;
                ctx.strokeStyle = color;
                ctx.stroke();
        
                ongoingTouches.splice(idx, 1, copyTouch(touches[i])); // swap in the new touch record
                    log(".");
                } else {
                    log("can't figure out which touch to continue");
                }
            }
        }
    }



    function handleEnd(evt) {

        //  log("touchend/touchleave.");
        var el = document.getElementsByTagName("canvas")[0];
        var ctx = el.getContext("2d");
        var touches = evt.changedTouches;
        var offset = findPos(el);
            
        for (var i = 0; i < touches.length; i++) {
            if(touches[i].clientX-offset.x >0 && touches[i].clientX-offset.x < parseFloat(el.width) && touches[i].clientY-offset.y >0 && touches[i].clientY-offset.y < parseFloat(el.height)){
                evt.preventDefault();
                var color = colorForTouch(touches[i]);
                var idx = ongoingTouchIndexById(touches[i].identifier);
                    
                if (idx >= 0) {
                    ctx.lineWidth = 4;
                    ctx.fillStyle = color;
                    ctx.beginPath();
                    ctx.moveTo(ongoingTouches[idx].clientX-offset.x, ongoingTouches[idx].clientY-offset.y);
                    ctx.lineTo(touches[i].clientX-offset.x, touches[i].clientY-offset.y);
                    ctx.fillRect(touches[i].clientX - 4-offset.x, touches[i].clientY - 4-offset.y, 8, 8); // and a square at the end
                    ongoingTouches.splice(i, 1); // remove it; we're done

                    log("----->END");
                } 
                else {
                    log("can't figure out which touch to end");
                }
            }
        }
    }



    function handleCancel(evt) {
        evt.preventDefault();
        log("touchcancel.");
        var touches = evt.changedTouches;
        
        for (var i = 0; i < touches.length; i++) {
            ongoingTouches.splice(i, 1); // remove it; we're done
        }
    }



    function colorForTouch(touch) {
        // var r = touch.identifier % 16;
        // var g = Math.floor(touch.identifier / 3) % 16;
        // var b = Math.floor(touch.identifier / 7) % 16;
        // r = r.toString(16); // make it a hex digit
        // g = g.toString(16); // make it a hex digit
        // b = b.toString(16); // make it a hex digit
        // var color = "#" + r + g + b;
        // log("color for touch with identifier " + touch.identifier + " = " + color);

        var color = "#000000";
        return color;
    }



    function copyTouch(touch) {
        return {identifier: touch.identifier,clientX: touch.clientX,clientY: touch.clientY};
    }



    function ongoingTouchIndexById(idToFind) {
        for (var i = 0; i < ongoingTouches.length; i++) {
            var id = ongoingTouches[i].identifier;
            
            if (id == idToFind) {
            return i;
            }
        }
        return -1; // not found
    }



    function log(msg) {
        var p = document.getElementById('log');
        p.innerHTML = msg + "\n" + p.innerHTML;
    }
    


    function findPos (obj) {
        var curleft = 0,
            curtop = 0;

        if (obj.offsetParent) {
            do {
                curleft += obj.offsetLeft;
                curtop += obj.offsetTop;
            } while (obj = obj.offsetParent);

            return { x: curleft-document.body.scrollLeft, y: curtop-document.body.scrollTop };
        }
    }
</script>




<canvas id="canvas" width="400" height="400" style="border:solid black 1px;">
    You really badly need to use a different browser.
  </canvas>
  <br>
  <button onclick="window.startup();">Initialize</button>
  <br>
  Log: <pre id="log" style="border: 1px solid #ccc;"></pre>