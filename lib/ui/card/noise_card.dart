import 'package:dashboardx/ui/dashboardx_icons.dart';
import 'package:dashboardx/ui/widget/d_column.dart';
import 'package:dashboardx/ui/widget/utils.dart';
import 'package:dashboardx/utils/dates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _tag = "dashboard_card";

class NoiseCard extends StatelessWidget {
  NoiseCard();

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
            "Noise",
            "Do qui nostrud deserunt sunt officia magna Lorem nisi laborum dolore irure conse...",
            "${Dates.currentData()}",
            emojiPath: DashboardxIcons.noise,
            emojiSize: Size(35, 39),
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
            "45dB",
            0.20,
            Color(0xFF49C154),
            uptitle: "We",
          ),
          DColumn(
            DashboardxIcons.sad,
            "45dB",
            0.10,
            Color(0xFF25265E).withOpacity(0.05),
            title: "Build. 1",
          ),
          DColumn(
            DashboardxIcons.calm,
            "90dB",
            0.40,
            Color(0xFF25265E).withOpacity(0.05),
            title: "Build. 12",
          ),
          DColumn(
            DashboardxIcons.calm,
            "45dB",
            0.30,
            Color(0xFF25265E).withOpacity(0.05),
            title: "Build. 23",
          ),
        ],
      ),
    );
  }
}
