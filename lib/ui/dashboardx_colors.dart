import 'package:flutter/material.dart';

class DashboardxColors {
  final Color backgroundColor;
  final Color activeColor;
  final Color passiveColor;
  final Color textColor;

  final Color green;
  final Color yellow;
  final Color orange;
  final Color red;

  DashboardxColors(bool darkMode)
      : backgroundColor = darkMode ? Colors.black : Colors.white,
        activeColor = Color(0xFF25265E).withOpacity(0.4),
        passiveColor = Color(0xFFE9E9EF),
        textColor = Color(0xFF25265E),
        green = Color(0xFF49C154),
        yellow = Color(0xFFF6D551),
        orange = Color(0xFFF6A051),
        red = Color(0xFFC8161D);
}
