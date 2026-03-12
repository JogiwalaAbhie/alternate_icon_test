import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
      _ application: UIApplication,
      didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
    let iconChannel = FlutterMethodChannel(name: "app.icon", binaryMessenger: controller.binaryMessenger)

    iconChannel.setMethodCallHandler { (call, result) in
        if call.method == "setIcon" {
            if let args = call.arguments as? [String: Any],
               let iconName = args["iconName"] as? String {
                
                if UIApplication.shared.supportsAlternateIcons {
                    UIApplication.shared.setAlternateIconName(iconName) { error in
                        if let error = error {
                            result(FlutterError(code: "icon_error", message: error.localizedDescription, details: nil))
                        } else {
                            result("success")
                        }
                    }
                } else {
                    result(FlutterError(code: "icon_error", message: "Alternate icons not supported", details: nil))
                }
            } else {
                result(FlutterError(code: "invalid_args", message: "iconName missing", details: nil))
            }
        } else {
            result(FlutterMethodNotImplemented)
        }
    }

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}