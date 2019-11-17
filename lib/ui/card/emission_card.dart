import 'package:built_collection/src/list.dart';
import 'package:dashboardx/data/model/server/contester.dart';
import 'package:dashboardx/ui/dashboardx_icons.dart';
import 'package:dashboardx/ui/widget/d_column.dart';
import 'package:dashboardx/ui/widget/utils.dart';
import 'package:dashboardx/utils/dates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _tag = "dashboard_card";

class EmissionCard extends StatelessWidget {
  final BuiltList<Contester> _leaderboard;

  EmissionCard(this._leaderboard);

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
            "CO2 Emission",
            "Unplug idle electronics. Devices like televisions, microwaves, scanners, and printers use standby power, even when off",
            "${Dates.currentData()}",
            emojiPath: DashboardxIcons.emission,
            emojiSize: Size(26, 29),
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
            DashboardxIcons.sad,
            "13Kg",
            0.20,
            Color(0xFF25265E).withOpacity(0.05),
            title: "Build. 2",
          ),
          DColumn(
            DashboardxIcons.sad,
            "13Kg",
            0.10,
            Color(0xFF25265E).withOpacity(0.05),
            title: "Build. 1",
          ),
          DColumn(
            DashboardxIcons.calm,
            "13Kg",
            0.40,
            Color(0xFFF6A051),
            title: "Build. 12",
          ),
          DColumn(
            DashboardxIcons.calm,
            "13Kg",
            0.30,
            Color(0xFF25265E).withOpacity(0.05),
            title: "Build. 23",
          ),
        ],
      ),
    );
  }


}
