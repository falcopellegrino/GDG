self.addEventListener('install', function(event) {
    event.waitUntil(
        caches.open('JakeArchibaldsBlogOnFetch13').then(function(cache) {
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
    
});