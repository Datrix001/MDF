import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomFont {
  static TextStyle title(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 24,
      color: isDark ? Colors.white : Colors.black,
    );
  }

  static TextStyle title1(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 32,
      color: isDark ? Colors.white : Colors.black,
    );
  }

  static TextStyle body(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: isDark ? Colors.white : Colors.black,
    );
  }

  static TextStyle body1(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 24,
      color: isDark ? Colors.white : Colors.black,
    );
  }
}
