if ('serviceWorker' in navigator) {
    // navigator.serviceWorker.register('/sw-test/sw.js', {scope: '/sw-test/'})
    navigator.serviceWorker.register(
        '/gdg/progressivewebapps/usingserviceworkers/sw.js'
        , {scope: '/gdg/progressivewebapps/usingserviceworkers/'}
    )
        .then(function(reg) {
            //Your service worker functions like a proxy server, 
            // allowing you to modify requests and responses, 
            // replace them with items from its own cache, and more.

            // registration worked
            console.log('Registration succeeded. Scope is ' + reg.scope);
        })
        .catch(function(error) {
            // registration failed
            console.log('Registration failed with ' + error);
        });
}