import 'package:flutter/foundation.dart';

class AppLogger {
  static void log(String tag, dynamic message) {
    if (kDebugMode) {
      print("$tag : $message");
    }
  }
}
