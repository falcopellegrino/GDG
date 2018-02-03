// importScripts('cache-polyfill-master/index.js');
importScripts('serviceworker-cache-polyfill.js');



self.addEventListener('install', function(event) {
    event.waitUntil(
        caches.open('JakeArchibaldsBlogOnFetch16').then(function(cache) {
            return cache.addAll(['/']);
        })
    );
});
self.addEventListener('fetch', function(event) {
    //if (event.request.url === new URL('/', location).href) {
    // console.log(".url|" + event.request.url);
    if(event.request.url.indexOf("not_existing.json") > -1){
        event.respondWith(
            new Response(
                "<h1>Hello!</h1>", 
                { headers: {'Content-Type': 'text/html' } }
            )
        )
    }
    if(event.request.url.indexOf("some.jpg") > -1){
        //self.addEventListener('fetch', function(event) {
        event.respondWith(
            //fetch('//www.google.co.uk/images/srpr/logo11w.png', {
            fetch('Http://www.google.co.uk/images/srpr/logo11w.png', {
                mode: 'no-cors'
            })
            // .then(function(response){
            //     return response;
            // })
        )
        //})
    }

    if(event.request.url.indexOf("http://www.somedomain.it") > -1){
        console.log(".url|" + event.request.url);
        var resource = event.request.url.split("/")[event.request.url.split("/").length-1];
        console.log("resource|" + resource);
        event.respondWith(
            // fetch('http://www.somedomain.it' + resource, {
            fetch(resource, {
                mode: 'no-cors'
            })
        )
    }
    
});

