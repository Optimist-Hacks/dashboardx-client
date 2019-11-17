import 'package:built_collection/src/list.dart';
import 'package:dashboardx/data/model/server/contester.dart';
import 'package:dashboardx/ui/dashboardx_colors.dart';
import 'package:dashboardx/ui/dashboardx_icons.dart';
import 'package:dashboardx/ui/widget/d_column.dart';
import 'package:dashboardx/ui/widget/utils.dart';
import 'package:dashboardx/utils/dates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dashboardx/service/api_service.dart';

const _tag = "emission_card";

class EmissionCard extends StatelessWidget {
  final BuiltList<Contester> _leaderboard;

  EmissionCard(this._leaderboard);

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
            "CO2 Emission",
            "Unplug idle electronics. Devices like televisions, microwaves, scanners, and printers use standby power, even when off",
            "${Dates.currentData()}",
            emojiPath: DashboardxIcons.emission,
            emojiSize: Size(26, 29),
          ),
        ),
        Flexible(child: _columns(context)),
      ],
    );
  }

  Widget _columns(BuildContext context) {
    List<Contester> sorted = _leaderboard.toList();
    sorted.sort((a, b) => a.co2EmissionMonthly.compareTo(b.co2EmissionMonthly));

    List<Widget> widgets = List<Widget>();
    for (int i = 0; i < sorted.length; i++) {
      final item = sorted[i];
      String icon;
      if (i == 0) {
        icon = DashboardxIcons.funny;
      } else if (i == 1) {
        icon = DashboardxIcons.calm;
      } else if (i == 2) {
        icon = DashboardxIcons.sad;
      } else {
        icon = DashboardxIcons.angry;
      }

      String name =
          item.housingId == ApiService.houseId ? "" : item.housingName;

      Color color = Color(0xFF25265E).withOpacity(0.05);
      if (item.housingId == ApiService.houseId) {
        if (i == 0) {
          color = Provider.of<DashboardxColors>(context).green;
        } else if (i == 1) {
          color = Provider.of<DashboardxColors>(context).yellow;
        } else if (i == 2) {
          color = Provider.of<DashboardxColors>(context).orange;
        } else {
          color = Provider.of<DashboardxColors>(context).red;
        }
      }

      widgets.add(
        DColumn(
          icon,
          "${item.co2EmissionMonthly.floor()}Kg",
          item.co2EmissionMonthly /
              sorted[sorted.length - 1].co2EmissionMonthly,
          color,
          title: name,
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 50),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: widgets,
      ),
    );
  }
}
