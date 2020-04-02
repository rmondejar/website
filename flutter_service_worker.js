'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"/manifest.json": "3138975a6401dfdddadba4cf6ccad19e",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/assets/AssetManifest.json": "de9e5a9ae8b0e928a08b04486af5c66e",
"/assets/LICENSE": "d33ef91063d303a9847c2c8169ebaad8",
"/assets/assets/images/photo.png": "a0ea72eab3bb6061d2cc5e413dfe824c",
"/assets/assets/images/gscholar.png": "7df4d7f438a045dedf020df28ef4672b",
"/assets/assets/images/linkedin.jpg": "ce64bf90cce392184f1d5e9ecfca928e",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"/main.dart.js": "b093a6f55acfdc35e2dc566fffce9300",
"/index.html": "a3b52cadc05361695e12b107ce50dca6"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
