import 'package:dashboardx/data/model/server/emotion.dart';
import 'package:dashboardx/ui/dashboardx_icons.dart';
import 'package:dashboardx/ui/widget/d_column.dart';
import 'package:dashboardx/ui/widget/utils.dart';
import 'package:dashboardx/utils/dates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _tag = "dashboard_card";

class EmotionCard extends StatelessWidget {
  final Emotion _emotion;

  EmotionCard(this._emotion);

  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Flexible(
          child: titleSubtitleDate(
            "Student \nHouse",
            "Now a lot of people are sad, we recommend a walk with friends!",
            "${Dates.currentData()}",
          ),
        ),
        Flexible(child: _columns()),
      ],
    );
  }

  Widget _columns() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 50),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DColumn(
            DashboardxIcons.angry,
            "${(_emotion.angryTotal() * 100).toInt()}%",
            _emotion.angryTotal(),
            Color(0xFFF2D0C5).withOpacity(0.4),
            title: "Angry",
          ),
          DColumn(
            DashboardxIcons.sad,
            "${(_emotion.sadTotal() * 100).toInt()}%",
            _emotion.sadTotal(),
            Color(0xFFC8E7FA).withOpacity(0.4),
            title: "Sad",
          ),
          DColumn(
            DashboardxIcons.calm,
            "${(_emotion.calmTotal() * 100).toInt()}%",
            _emotion.calmTotal(),
            Color(0xFFC9C9D8).withOpacity(0.4),
            title: "Calm",
          ),
          DColumn(
            DashboardxIcons.funny,
            "${(_emotion.funnyTotal() * 100).toInt()}%",
            _emotion.funnyTotal(),
            Color(0xFFC5E9CB).withOpacity(0.4),
            title: "Funny",
          ),
        ],
      ),
    );
  }
}
