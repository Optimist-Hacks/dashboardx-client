import 'package:flutter/material.dart';

Widget titleSubtitleDate(String title, String subtitle, String date) {
  return Column(
    children: [
      Text(title),
      Text(subtitle),
      Text(date),
    ],
  );
}
