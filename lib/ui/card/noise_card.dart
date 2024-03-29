import 'package:dashboardx/ui/dashboardx_icons.dart';
import 'package:dashboardx/ui/widget/d_column.dart';
import 'package:dashboardx/ui/widget/utils.dart';
import 'package:dashboardx/utils/dates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dashboardx/ui/dashboardx_colors.dart';

const _tag = "noise_card";

class NoiseCard extends StatelessWidget {
  final double noise;

  NoiseCard(this.noise);

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Flexible(
          child: titleSubtitleDate(
            "Noise",
            "Keep quiet, somebody might be sleeping",
            "${Dates.currentData()}",
            emojiPath: DashboardxIcons.noise,
            emojiSize: Size(35, 39),
          ),
        ),
        Flexible(child: _columns(context)),
      ],
    );
  }

  Widget _columns(BuildContext context) {
    final double n1 = noise;
    final double n2 = 55;
    final double n3 = 70;
    final double n4 = 35;

    final max = 80;

    final double n1p = (n1 / max);
    final double n2p = (n2 / max);
    final double n3p = (n3 / max);
    final double n4p = (n4 / max);

    String icon;
    Color color = Color(0xFF25265E).withOpacity(0.05);
    if (n1 < 40) {
      icon = DashboardxIcons.funny;
      color = Provider.of<DashboardxColors>(context).green;
    } else if (n1 < 60) {
      icon = DashboardxIcons.calm;
      color = Provider.of<DashboardxColors>(context).yellow;
    } else if (n1 < 80) {
      icon = DashboardxIcons.sad;
      color = Provider.of<DashboardxColors>(context).orange;
    } else {
      icon = DashboardxIcons.angry;
      color = Provider.of<DashboardxColors>(context).red;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 50),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DColumn(
            icon,
            "${n1.toInt()}dB",
            n1p,
            color,
          ),
          DColumn(
            DashboardxIcons.sad,
            "${n2.toInt()}dB",
            n2p,
            Color(0xFF25265E).withOpacity(0.05),
            title: "Build. 1",
          ),
          DColumn(
            DashboardxIcons.calm,
            "${n3.toInt()}dB",
            n3p,
            Color(0xFF25265E).withOpacity(0.05),
            title: "Build. 12",
          ),
          DColumn(
            DashboardxIcons.calm,
            "${n4.toInt()}dB",
            n4p,
            Color(0xFF25265E).withOpacity(0.05),
            title: "Build. 23",
          ),
        ],
      ),
    );
  }
}
