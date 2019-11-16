import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _tag = "emergency_card";

class EmergencyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFe97446),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Fire alarm!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              height: 1.115,
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Everyone urgently leaves the building, the fire spreads very quickly!",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              height: 1.5,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
