import 'package:dashboardx/ui/dashboardx_colors.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const _tag = "dashboard_card";

class DashboardCard extends StatelessWidget {
  final int _pageCount;
  final int _pageNumber;
  final _body;

  DashboardCard(this._pageCount, this._pageNumber, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Center(
            child: DotsIndicator(
              dotsCount: _pageCount,
              position: _pageNumber.toDouble(),
              decorator: DotsDecorator(
                activeColor: Provider.of<DashboardxColors>(context).activeColor,
                color: Provider.of<DashboardxColors>(context).passiveColor,
                size: Size.square(5.0),
              ),
            ),
          ),
        ),
        _body,
        SizedBox(height: 30.0),
      ],
    );
  }
}