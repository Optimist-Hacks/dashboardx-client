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
            "${(0.20 * 100).toInt()}%",
            0.20,
            Color(0xFFF2D0C5).withOpacity(0.4),
            title: "Angry",
          ),
          DColumn(
            DashboardxIcons.sad,
            "${(0.10 * 100).toInt()}%",
            0.10,
            Color(0xFFC8E7FA).withOpacity(0.4),
            title: "Sad",
          ),
          DColumn(
            DashboardxIcons.calm,
            "${(0.40 * 100).toInt()}%",
            0.40,
            Color(0xFFC9C9D8).withOpacity(0.4),
            title: "Calm",
          ),
          DColumn(
            DashboardxIcons.funny,
            "${(0.30 * 100).toInt()}%",
            0.30,
            Color(0xFFC5E9CB).withOpacity(0.4),
            title: "Funny",
          ),
        ],
      ),
    );
  }
}
