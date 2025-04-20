// Install event
self.addEventListener('install', event => {
    console.log('📦 Service Worker installed');
    self.skipWaiting(); // activate immediately (optional)
  });
  
  // Activate event
  self.addEventListener('activate', event => {
    console.log('🚀 Service Worker activated');
  });
  
  // Fetch event (optional demo)
  self.addEventListener('fetch', event => {
    console.log('📡 Fetching:', event.request.url);
  });
  