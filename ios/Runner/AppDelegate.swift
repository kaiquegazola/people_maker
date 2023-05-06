import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let lottieSplashScreen = LottieSplashScreen()
    let flutterViewController: FlutterViewController = window?.rootViewController as! FlutterViewController
    flutterViewController.splashScreenView = lottieSplashScreen.view
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
