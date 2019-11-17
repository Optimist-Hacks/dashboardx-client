import 'package:dashboardx/ui/dashboardx_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dashboardx/utils/log.dart';

const _tag = "d_column";

class DColumn extends StatelessWidget {
  final String emojiPath;
  final String subtitle;
  final Color color;
  final String title;
  final String uptitle;
  final double percent;

  DColumn(
    this.emojiPath,
    this.subtitle,
    this.percent,
    this.color, {
    this.title,
    this.uptitle,
  }) {
    Log.d(_tag, "percent = $percent");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          child: _gist(),
        ),
        SizedBox(height: 30),
        _percent(),
      ],
    );
  }

  Widget _gist() {
    return Container(
      width: 48,
      child: Stack(
        children: <Widget>[
          _decoration(),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 48),
              if (title != null)
                RotatedBox(
                  quarterTurns: 3,
                  child: _title(),
                ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                  top: 15,
                ),
                child: _emoji(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _decoration() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final height = constraints.maxHeight * percent * 0.5 +
              constraints.maxHeight * 0.5;

          return Container(
            height: height,
            width: 48,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                if (uptitle != null) _uptitle(),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: color,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _title() {
    return Builder(
      builder: (context) => Text(
        title,
        style: TextStyle(
          color: Provider.of<DashboardxColors>(context).textColor,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          height: 1,
        ),
      ),
    );
  }

  Widget _percent() {
    return Builder(
      builder: (context) => Text(
        subtitle,
        style: TextStyle(
          color:
              Provider.of<DashboardxColors>(context).textColor.withOpacity(0.4),
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _emoji() {
    return Image.asset(
      emojiPath,
      width: 22,
      height: 22,
    );
  }

  Widget _uptitle() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Builder(
        builder: (context) => Text(
          uptitle,
          style: TextStyle(
            color: Provider.of<DashboardxColors>(context).textColor,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            height: 1,
          ),
        ),
      ),
    );
  }
}
