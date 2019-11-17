import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget titleSubtitleDate(String title, String subtitle, String date,
    {String emojiPath, Size emojiSize}) {
  return Padding(
    padding: const EdgeInsets.only(left: 40, top: 100, bottom: 50),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (emojiPath != null) _emoji(emojiPath, emojiSize),
        _title(title),
        _subtitle(subtitle),
        _date(date),
      ],
    ),
  );
}

Widget _emoji(String emojiPath, Size emojiSize) {
  return Image.asset(
    emojiPath,
    width: emojiSize.width,
    height: emojiSize.height,
  );
}

Widget _title(String title) {
  return Text(
    title,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 40,
      height: 1.05,
      color: Color(0xFF25265E),
    ),
  );
}

Widget _subtitle(String subtitle) {
  return Text(
    subtitle,
    style: TextStyle(
      fontSize: 16,
      height: 1.5,
      color: Color(0xFF25265E),
    ),
  );
}

Widget _date(String subtitle) {
  return Text(
    subtitle,
    style: TextStyle(
      fontSize: 16,
      height: 1.5,
      color: Color(0xFF25265E).withOpacity(0.4),
    ),
  );
}
