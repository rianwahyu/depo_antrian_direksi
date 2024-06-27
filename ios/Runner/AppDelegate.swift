import Flutter
import UIKit
import FirebaseMessaging
import UserNotifications
import FirebaseCore
// import GoogleMaps


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    FirebaseApp.configure()

    
      
    // GMSServices.provideAPIKey("AIzaSyBvREOgvCEtPAcHhZjvZOZkSAwZCmaQ3A4")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
