self.addEventListener('install', function(event) {
    event.waitUntil(
        caches.open('swcache13').then(function(cache) {
            return cache.addAll([
                '/',
            ]);
        })
    );
});
self.addEventListener('fetch', function(event) {
    // console.log("addEventListener('fetch')");
    // console.log(".url|" + event.request.url);
    if(event.request.url.indexOf("not_existing.json") > -1){
        // var obj = { "Prop" : "Some value" };
        var str = JSON.stringify({ "Prop" : "Some value" });
        event.respondWith(
            new Response(str, {
            	ok: true,
            	status: 222,
             	url: '/'
                //  , headers = new Headers({
                //     'Content-Type': 'application/json',
                // })
            })
        );    
    }
});