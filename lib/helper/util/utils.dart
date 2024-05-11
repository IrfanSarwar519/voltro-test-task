import 'dart:developer';

import 'package:flutter/foundation.dart';

/// General class for utilities functions.
class Utils {
  /// This function will print only in debug mode.
  static void console(String message) {
    if (kDebugMode) {
      log(message);
    }
  }
}
