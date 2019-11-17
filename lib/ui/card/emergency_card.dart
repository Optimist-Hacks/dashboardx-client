import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _tag = "emergency_card";

class EmergencyCard extends StatelessWidget {
  final String _name;
  final String _description;

  const EmergencyCard(this._name, this._description);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Color(0xFFe97446),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            _name,
            //"Fire alarm!"
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
            _description,
            //"Everyone urgently leaves the building, the fire spreads very quickly!"
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
