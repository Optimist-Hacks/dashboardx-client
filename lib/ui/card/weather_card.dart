import 'package:dashboardx/data/model/server/emotion.dart';
import 'package:dashboardx/ui/dashboardx_colors.dart';
import 'package:dashboardx/ui/dashboardx_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dashboardx/ui/dashboardx_colors.dart';
import 'package:provider/provider.dart';

const _tag = "weather_card";

class WeatherCard extends StatelessWidget {
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
              DashboardxIcons.cloudy,
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
                  DashboardxIcons.weatherIcon,
                  width: 35,
                  height: 39,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Text(
                  "Сloudy",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.115,
                      fontSize: 26,
                      color: Provider.of<DashboardxColors>(context).textColor),
                ),
                SizedBox(height: 10),
                Text(
                  "Don't forget your scarf",
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
