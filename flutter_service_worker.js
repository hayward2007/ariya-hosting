'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "01d5a081b3df3c873576457bf78f7d33",
"version.json": "4855fa6e5cd9a514fbdc67e54b3d6b49",
"index.html": "5ad3c93169f80e8fa5b7c90d5bcc3b48",
"/": "5ad3c93169f80e8fa5b7c90d5bcc3b48",
"main.dart.js": "8cc978d1790f6905513eaed0fd34e060",
"flutter.js": "5de281a37b2308e43846d3a0b545c921",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "64399a86f9307a88f2120f32a9f2cfd6",
"assets/AssetManifest.json": "22bcccc580f6bc7dd4aab40b36a477aa",
"assets/NOTICES": "82f7b0d20dbc6c4126b893cca5f0960c",
"assets/FontManifest.json": "7b1025ca9ba89daba0b07a3424d85cd7",
"assets/AssetManifest.bin.json": "ed6710583fa7cc3e8895f55f44999eea",
"assets/packages/youtube_player_flutter/assets/speedometer.webp": "50448630e948b5b3998ae5a5d112622b",
"assets/packages/flutter_inappwebview_web/assets/web/web_support.js": "509ae636cfdd93e49b5a6eaf0f06d79f",
"assets/packages/flutter_inappwebview/assets/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/assets/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "4c9e0431d96d67494da471459e55e6e6",
"assets/fonts/MaterialIcons-Regular.otf": "f35873a84f2848ea168f40df169119ea",
"assets/assets/images/quiz/down.svg": "543ed9579b1e4823a02c33af271ffbae",
"assets/assets/images/quiz/seven_to_three.svg": "7b195392b81b2ecf6bd26424e28f4bd5",
"assets/assets/images/quiz/stock.svg": "58479795c84cd57f43eadc7787305eea",
"assets/assets/images/quiz/X.svg": "2d6c7ae8f5fd40e8a18605905fe3d4c5",
"assets/assets/images/quiz/O.svg": "9ee9eff95eca296b6151a33609b09ffb",
"assets/assets/images/quiz/up.svg": "48cca3436268459f6af61fd7aa47c9c3",
"assets/assets/images/quiz/stock.png": "95256781ca7f058936071cf55a358862",
"assets/assets/images/quiz/result.png": "003807c4c7466d2562202e73dced6fc3",
"assets/assets/images/quiz/bond.svg": "15c93f57003fc9df2ccb39f6a4a353eb",
"assets/assets/images/quiz/bond.png": "81773afccbd632021e14974e9b796ab2",
"assets/assets/images/quiz/three_to_seven.svg": "9c4c8a30b723c6fd1d0af6c152068437",
"assets/assets/images/quiz/dart.png": "10ebce31fb1d49586d13c92682daed8b",
"assets/assets/images/profile.png": "2481d468c274a8bdcc48ce77d0ddd724",
"assets/assets/images/rank/sema.png": "f0ce86ab11f49133c2552d22e24c3ab1",
"assets/assets/images/rank/sunrin.png": "7900c8250a6c8de3908bdee125f57893",
"assets/assets/images/rank/dimigo.png": "f07899e2f34b559effd5b77282a1bb75",
"assets/assets/images/rank/2.png": "c1824338ecaad5fdd4be0299d630be17",
"assets/assets/images/rank/3.png": "b83cec2fe6f75a84dfa5873d7b23c38f",
"assets/assets/images/rank/1.png": "a5709f8c2497b8eed745e10946a360c1",
"assets/assets/icons/down.svg": "524be19a5bfcbb1efb53902a678297a9",
"assets/assets/icons/up_purple.svg": "ff6945243ece64a35c773c3bddddd48e",
"assets/assets/icons/up.svg": "b2a3c6417437c3793737475be2d8ff61",
"assets/assets/icons/down_black.svg": "92d9b2eff0b7d1797e21f5853f9bfc52",
"assets/assets/icons/up_pink.svg": "c063eca6fbd177561e2f24f7bd52e230",
"assets/assets/icons/logo.svg": "849e99e10d825443163a61a04be8152b",
"assets/assets/fonts/SUITE-Heavy.ttf": "9192d52f0273bed93c8b9cc38e01d0af",
"assets/assets/fonts/SUITE-Medium.ttf": "1427bfce5d04aaea25874bd2156aafcc",
"assets/assets/fonts/SUITE-Regular.ttf": "9dbbcecb7c8d446855c29e610b537f38",
"assets/assets/fonts/SUITE-Light.ttf": "c5597f8dc52afb039a9aee9448615769",
"assets/assets/fonts/SUITE-SemiBold.ttf": "91ee14c1884d0439e089ef2d64b715b0",
"assets/assets/fonts/SUITE-Bold.ttf": "d2c7e7ad75c47f0e0a2691fc15b011a4",
"assets/assets/fonts/SUITE-ExtraBold.ttf": "9612d3e10e67f8c1d9a3b21fa0fdeebd",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "bff729c8a2c4b56533bd34e416630612",
"canvaskit/canvaskit.js.symbols": "bb7854ddbcaa2e58e5bdef66b58d4b47",
"canvaskit/skwasm.wasm": "f4c7d8f94b67ebabe8416704244b0a0c",
"canvaskit/chromium/canvaskit.js.symbols": "f23279209989f44e047062055effde63",
"canvaskit/chromium/canvaskit.js": "6a5bd08897043608cb8858ce71bcdd8a",
"canvaskit/chromium/canvaskit.wasm": "6569939e59aa3da220dd1a9f859e6905",
"canvaskit/canvaskit.js": "32cc31c7f950543ad75e035fcaeb2892",
"canvaskit/canvaskit.wasm": "2ddb2c3193e8901b25e67c8ff6298702",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
