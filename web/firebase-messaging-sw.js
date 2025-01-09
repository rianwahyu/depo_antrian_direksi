importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js");

firebase.initializeApp({
  apiKey: "AIzaSyABOcPmzlqj7jQvuWlh0NDFU-bCQaYIBEg",
  authDomain: "antrian-direksi-ec0f3.firebaseapp.com",
  projectId: "antrian-direksi-ec0f3",
  storageBucket: "antrian-direksi-ec0f3.firebasestorage.app",
  messagingSenderId: "781849167391",
  appId: "1:781849167391:web:1a0aeab7133d5e3580b72a",
  measurementId: "G-8Y5YDHZMH7"
});

const messaging = firebase.messaging();

// messaging.onBackgroundMessage((message) => {
//   console.log("onBackgroundMessage", message);
// });

messaging.onBackgroundMessage((payload) => {
  console.log('Received background message ', payload);
  const notificationTitle = payload.notification.title;
  const notificationOptions = {
    body: payload.notification.body,
    icon: '/firebase-logo.png'
  };

  self.registration.showNotification(notificationTitle, notificationOptions);
});