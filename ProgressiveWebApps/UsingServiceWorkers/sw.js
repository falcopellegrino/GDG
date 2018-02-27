// *** To do even 20170110: 
// Chrome Canary: Go to chrome://flags and turn on experimental-web-platform-features;
// restart browser (note that some features are now enabled by default in Chrome.)
self.addEventListener('install', function(event) {
    console.log("self.addEventListener('install'");
    event.waitUntil(
        caches.open('v7').then(function(cache) {
            console.log("caches.open");
            return cache.addAll([
                '/gdg/progressivewebapps/usingserviceworkers/',
                '/gdg/progressivewebapps/usingserviceworkers/index.html',
                '/gdg/progressivewebapps/usingserviceworkers/style.css',
                '/gdg/progressivewebapps/usingserviceworkers/app.js',
                '/gdg/progressivewebapps/usingserviceworkers/image-list.js',
                '/gdg/progressivewebapps/usingserviceworkers/star-wars-logo.png',
                '/gdg/progressivewebapps/usingserviceworkers/gallery/',
                '/gdg/progressivewebapps/usingserviceworkers/gallery/bountyHunters.jpg',
                '/gdg/progressivewebapps/usingserviceworkers/gallery/mylittlevader.jpg',
                '/gdg/progressivewebapps/usingserviceworkers/gallery/snowTroopers.jpg'
            ]);
        })
    );
});

self.addEventListener('fetch', function(event) {
    console.log("self.addEventListener('fetch'");
    event.respondWith(
        // magic goes here
        // caches.match(event.request)
        caches.match(event.request)
            .then(function(resp) {
                // return response || fetch(event.request);
                return resp || fetch(event.request).then(function(response) {
                    return caches.open('v7').then(function(cache) {
                        cache.put(event.request, response.clone());
                        return response;
                    });  
                });
            })
            .catch(function() {
                return caches.match('/sw-test/gallery/myLittleVader.jpg');
            })
    );
});

self.addEventListener('activate', function(event) {
    var cacheWhitelist = ['v6'];
    event.waitUntil(
        caches.keys().then(function(keyList) {
            return Promise.all(keyList.map(function(key) {
                if (cacheWhitelist.indexOf(key) === -1) {
                    return caches.delete(key);
                }
            }));
        })
    );
});