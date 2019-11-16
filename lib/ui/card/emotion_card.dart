import 'package:dashboardx/ui/card/dashboard_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _tag = "dashboard_card";

class EmotionCard extends StatelessWidget {
  final _emotion;
  final int _pageCount;
  final int _pageNumber;

  EmotionCard(this._pageCount, this._pageNumber, this._emotion);

  @override
  Widget build(BuildContext context) {
    return DashboardCard(_pageCount, _pageNumber, _body());
  }

  Widget _body() {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Text("Student House"),
          ],
        ),
      ],
    );
  }
}
