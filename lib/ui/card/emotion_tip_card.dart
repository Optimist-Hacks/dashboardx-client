import 'package:dashboardx/data/model/server/emotion.dart';
import 'package:dashboardx/ui/dashboardx_colors.dart';
import 'package:dashboardx/ui/dashboardx_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dashboardx/ui/dashboardx_colors.dart';
import 'package:provider/provider.dart';

const _tag = "dashboard_card";

class EmotionTopCard extends StatelessWidget {
  final Emotion _emotion;

  String _imagePath;
  String _title;
  String _description;

  EmotionTopCard(this._emotion) {
    final angryTotal = _emotion.angryTotal();
    final sadTotal = _emotion.sadTotal();
    final calmTotal = _emotion.calmTotal();
    final funnyTotal = _emotion.funnyTotal();

    if (angryTotal > sadTotal &&
        angryTotal > calmTotal &&
        angryTotal > funnyTotal) {
      _imagePath = DashboardxIcons.angryTip;
      _title = "Meditate";
      _description =
          "It will help to reduce stress and to concentrate on what's important";
    } else if (sadTotal > angryTotal &&
        sadTotal > calmTotal &&
        sadTotal > calmTotal &&
        sadTotal > funnyTotal) {
      _imagePath = DashboardxIcons.sadTip;
      _title = "Take a walkd";
      _description =
          "Spend time with friends or outdoors. This will fill you up with energy.";
    } else if (calmTotal > angryTotal &&
        calmTotal > sadTotal &&
        calmTotal > funnyTotal &&
        calmTotal > funnyTotal) {
      _imagePath = DashboardxIcons.calmTip;
      _title = "Calm";
      _description =
          "Time to study or do your own project. You're doing your future right now";
    } else {
      _imagePath = DashboardxIcons.funnyTip;
      _title = "Funny";
      _description =
          "Share your passion with others. Take time to volunteer or help the people around you";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 45.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(23),
            child: Image.asset(
              _imagePath,
              width: 264,
              height: 196,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 50),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  DashboardxIcons.emotionTipIcon,
                  width: 35,
                  height: 39,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Text(
                  _title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.115,
                      fontSize: 26,
                      color: Provider.of<DashboardxColors>(context).textColor),
                ),
                SizedBox(height: 10),
                Text(
                  _description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      fontSize: 16,
                      color: Provider.of<DashboardxColors>(context).textColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
