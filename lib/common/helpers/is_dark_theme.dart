import 'package:flutter/material.dart';

extension DarkTheme on BuildContext {
  bool get isDarkTheme {
    return Theme.of(this).brightness == Brightness.dark;
  }
}