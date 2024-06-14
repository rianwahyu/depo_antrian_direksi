importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js");


firebase.initializeApp({
  apiKey: "AIzaSyCCIj_3SVGpc_Y5mprQ7w66lORpRD4kmAA",
  authDomain: "depo-bangunan-ced0b.firebaseapp.com",
  databaseURL: "https://depo-bangunan-ced0b-default-rtdb.firebaseio.com",
  projectId: "depo-bangunan-ced0b",
  storageBucket: "depo-bangunan-ced0b.appspot.com",
  messagingSenderId: "309644002856",
  appId: "1:309644002856:web:bf9c0f4628ea8f107d971d",
  measurementId: "G-Y1KH72FLPS"
});

const messaging = firebase.messaging();


messaging.onBackgroundMessage((message) => {
  console.log("onBackgroundMessage", message);
});

// messaging.onBackgroundMessage(function(payload) {  
//   console.log('Message received Background. ', payload);

//   // Customize notification here
//   const notificationTitle = payload.notification.title;
//   const notificationOptions = {
//     body: payload.notification.body,
//   };

//   self.registration.showNotification(notificationTitle,
//     notificationOptions);
// });


