'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "ea26e24f00f07b05fe21544ccddc0cb8",
"index.html": "20103ee76cb2d2e0fedddfc14abcf9fa",
"/": "20103ee76cb2d2e0fedddfc14abcf9fa",
"main.dart.js": "923cdfd3ab684ae8f2f40512f7ce06be",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"favicon.png": "2704101cb06ce66e2000356a312be25c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"assets/AssetManifest.json": "7fb156814677e6fc8f31ca3ae32d06bc",
"assets/NOTICES": "5f37e8a40f1245732917ab78ee003fe4",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/AssetManifest.bin.json": "fbc4f6cd76edc380b7a3b3df21589118",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "b72c617acdf2227c8b1413215f620711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a5d7457fda15b7622c14f432ba63039a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "f25e8e701660fb45e2a81ff3f43c6d5c",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/lib/icons/twitter.png": "a0dde15362829a17a42588d91ead6ea8",
"assets/lib/icons/linkedin.png": "898c0407d74c75fa110de76293d96ddd",
"assets/lib/icons/facebook.png": "494cb5a2f0c105a4fccf77c068578f52",
"assets/AssetManifest.bin": "7d20fd0f9a30d84fbd7efc4aa1780a9c",
"assets/fonts/MaterialIcons-Regular.otf": "abe8f9167d3047d55337a3e62374daf7",
"assets/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/Layer_2.png": "b14f5265be1112f73fee4b8a7b1180b9",
"assets/assets/images/P11_Discussions.jpg": "6dac4041fece5992dda17ab721a67343",
"assets/assets/images/Project_based_learning.png": "0857e3379258c236864849995822d591",
"assets/assets/images/CitySmart.gif": "569695115eb463ad7b757e6044997f96",
"assets/assets/images/2023NA_036.webp": "e81b77cbc608ebad860ad32b980f43ff",
"assets/assets/images/photocrpblu.webp": "fe8e8703e98f6aa12ac90a3be945fe54",
"assets/assets/images/Anson_Bio.webp": "87273789a24c73d11ddf5a96e6c8d09b",
"assets/assets/images/iPhone_14_&_15_Pro_Max_-_1_(1).png": "63e405b1299e5f8ea98f0a77899281f8",
"assets/assets/images/Anson.webp": "dc75534db5a6944395439129b4b0cc3c",
"assets/assets/images/CopyofWCAwardCerts.jpg": "cca43e317618b3dc4d7ead59efac0896",
"assets/assets/images/richard-image.jpeg": "4f48398949cddb3bd61339f77d23d59e",
"assets/assets/images/IPHONE_5_(1).png": "476933fa195bff84c81a23ef7b179132",
"assets/assets/images/Worldheritage.gif": "b3ecf62a73aea30487445223ef3baffe",
"assets/assets/images/2023NA_037.webp": "fc4d4476d617d41ae678c61c8c3b81d1",
"assets/assets/images/2023NA_040.webp": "6852ae5aa056e975315c654f8c8f6307",
"assets/assets/images/BusinessP.png": "953f9da2460b86b4c8e377d0cbb9dd80",
"assets/assets/images/ParentP.png": "32856fdb664a6f71a641dbcab45457ca",
"assets/assets/images/2023NA_030.webp": "a59492c54fb0a0bd331cdd442ff3058c",
"assets/assets/images/2023NA_289.jpg": "287f90784964ade447603c27e8e74773",
"assets/assets/images/FT_245_M.webp": "332a3192bb75d236f895e3693bb04a85",
"assets/assets/images/ISH%25202.gif": "02712021d948d5490f5fb9f179c19d81",
"assets/assets/images/Soldering.png": "7e81b09a9f5fdb0ee373bf6ade3e03c7",
"assets/assets/images/MK3.jpeg": "2068901de69e06ae268d7271a25c08f0",
"assets/assets/images/photocrpfei.webp": "e6408c6b5c191e3063762e26ba6d1cf4",
"assets/assets/images/2023NA_301.jpg": "89ce24facdad5f9f4542651d3f875fdc",
"assets/assets/images/P8_3D.jpg": "68d89d0fc90e67dcdc5c120a9bfad1a2",
"assets/assets/images/DSC_1630.webp": "bc65bd942c4dc7df3011ff6ee04c89a5",
"assets/assets/images/2023NA_046.webp": "a81a2c9d293a568c59e8b48bd9f0554e",
"assets/assets/images/DSC_1606.JPG": "334e7d4a03d89482d7dd7f370da84e03",
"assets/assets/images/2023NA_073.jpg": "ed4797dbd8a11b5908bcffa712e6a545",
"assets/assets/images/DSC_1650.webp": "5b825c8b96c5a330d811deaf8169e129",
"assets/assets/images/giang-picture.jpeg": "7fc1f71d5a6ee82aeb7e4062c1bec852",
"assets/assets/images/Friendly%2520bear@4x%25202.png": "79b61bce38218994fb2b6019addfc959",
"assets/assets/images/Group_4.png": "5d77154ac283142d98799bc2df9aee2f",
"assets/assets/images/20221021_NA_085.jpg": "7deb4fa83755135ae5322c591a190f12",
"assets/assets/images/2023NA_031.webp": "4b1edde56abedc15d0c3e4651fc2a392",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/2023NA_032.webp": "1ff6911f9bec3d8cd66630bb68bd6d4f",
"assets/assets/images/NASA.png": "5c6af6de620d3c3211163a929c8d9152",
"assets/assets/images/photocrpfei2.webp": "4c93659275c177eb65beffbd65bcbaba",
"assets/assets/images/USGS.png": "2aa9bb69fa041c8c31dfb7a226d4e5ba",
"assets/assets/images/twitter.png": "a0dde15362829a17a42588d91ead6ea8",
"assets/assets/images/linkedin.png": "898c0407d74c75fa110de76293d96ddd",
"assets/assets/images/Covid%2520TK.gif": "f6380a4ccb7fed032377f63b143faa60",
"assets/assets/images/photocrprsp2.webp": "582e15519fed3ff36e6c289c3f5f9fd1",
"assets/assets/images/iPhone_14_&_15_Pro_Max_-_6.png": "599ecc9db5c925d1de11dbd6704f1bd3",
"assets/assets/images/ESP%2520web.gif": "3101b38ce0c2a4c8f4ddc490f2bd49b1",
"assets/assets/images/BenefitP.png": "66936a8cfbb51b11672cd9b2d387ca24",
"assets/assets/images/unsplash_gG-YEEDSppM_(1).webp": "338ff24e9f8f5e0be116d43f422035ec",
"assets/assets/images/Trophie.jpg": "f7ef055ea32bf3f26e45db08fc3d64d2",
"assets/assets/images/FT_239_M.webp": "d6db1831119c13f8c8770fb734e67b60",
"assets/assets/images/DSC_1614.webp": "ff5bbfec471b6e8031ce3f4fc560e2b1",
"assets/assets/images/2023NA_034.webp": "ec5a63957d53a278adaff164a70a5b3e",
"assets/assets/images/facebook.png": "494cb5a2f0c105a4fccf77c068578f52",
"assets/assets/images/2023NA_408.jpg": "c23c81148714c340630e3eaa47435082",
"assets/assets/images/NAM_007_M.webp": "fe22b78e2ba9a64be1f45f3912ed567c",
"assets/assets/images/photocrprsp.webp": "f5c0c4b60f6de8ae608254bd138ff87e",
"assets/assets/images/white.png": "08932b0aa2851a3904f4fc2ccb147211",
"assets/assets/images/IMG_1138.png": "1d9893f864a9df7afccf607321f13d0d",
"assets/assets/images/minh-picture.jpg": "455f6e73bb8b8aa57d571024e61d060e",
"assets/assets/images/2023NA_039.webp": "01803a17845bdd358f6ec6e51074aad9",
"assets/assets/images/2023NA_231.jpg": "da6e499a37d75365828dc1b8cff35fee",
"assets/assets/images/james-picture.jpg": "8ffe08f9a7197125b4b6220c75eec89d",
"assets/assets/images/DSC_1652.JPG": "417d1e4019d3b01e18ea7d92f92828ae",
"assets/assets/images/Career_-_oriented_skills.png": "9f2114693e6fc3f6db682f58e03da259",
"assets/assets/images/HowtoAchieveP.png": "2e9f83ba1cdf8b85341ba866f69b180c",
"assets/assets/images/UN.png": "95f0140ab1b6f0bc3addafddd7f42e2a",
"assets/assets/lottie_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
