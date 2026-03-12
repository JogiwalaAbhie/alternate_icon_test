// app_icon_manager.dart
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AppIconManager {
  static const _channel = MethodChannel('app.icon');

  static Future<void> setAlternateIcon(String iconName) async {
    try {
      final result = await _channel.invokeMethod('setIcon', {'iconName': iconName});
      if (kDebugMode) {
        print(result);
      } // success
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print("Error changing app icon: ${e.message}");
      }
    }
  }
}