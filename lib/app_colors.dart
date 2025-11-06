import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF4A90E2);
  static const Color background = Color(0xFFF5F5F5);

  // [MODIFIED] 1. 将 'static const' 改为 'static final'
  static final List<Color> cardColorPalette = [
    // [MODIFIED] 2. 换回正确的 [400] 语法，并添加 '!' (非空断言)
    Colors.blue[400]!,
    Colors.green[700]!,
    Colors.amber[600]!,
    Colors.purple[600]!,
    Colors.teal[200]!,
    Colors.red[400]!,
    Colors.indigo[800]!,
    Colors.pink[100]!,
    Colors.brown[600]!,
    Colors.lightGreen[300]!,
  ];

  // (getContrastColor 方法保持不变)
  static Color getContrastColor(Color backgroundColor) {
    double luminance = backgroundColor.computeLuminance();
    return luminance > 0.5 ? Colors.black : Colors.white;
  }
}
