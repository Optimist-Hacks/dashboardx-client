import 'package:flutter/material.dart';

class DashboardxColors {
  final Color backgroundColor;
  final Color activeColor;
  final Color passiveColor;
  final Color textColor;

  DashboardxColors(bool darkMode)
      : backgroundColor = darkMode ? Colors.black : Colors.white,
        activeColor = Color(0xFF25265E).withOpacity(0.4),
        passiveColor = Color(0xFFE9E9EF),
        textColor = Color(0xFF25265E);
}
