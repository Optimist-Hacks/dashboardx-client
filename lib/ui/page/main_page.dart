import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dashboardx/data/model/state/main/main_state.dart';
import 'package:dashboardx/domain/main_bloc.dart';
import 'package:dashboardx/service/api_service.dart';
import 'package:dashboardx/service/preferences_service.dart';
import 'package:dashboardx/ui/card/emotion_card.dart';
import 'package:dashboardx/ui/dashboardx_colors.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

const _tag = "main_page";

class MainPage extends StatefulWidget {
  static const routeName = '/main';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final CompositeSubscription _subscriptions = CompositeSubscription();
  MainBloc _mainBloc;
  MainState _state;
  PreferencesService _preferencesService;

  int _pageCount = 3;
  int _currentPage = 0;

  @override
  void didChangeDependencies() {
    _preferencesService ??= Provider.of<PreferencesService>(context);
    if (_mainBloc == null) {
      _mainBloc ??= MainBloc(
        _preferencesService,
        Provider.of<ApiService>(context),
      );
      StreamSubscription subscription = _mainBloc.state.listen((state) {
        setState(() => _state = state);
      });
      _subscriptions.add(subscription);
    }

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _subscriptions?.dispose();
    _mainBloc?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_state == null) {
      return Center(child: CircularProgressIndicator());
    }
    return Scaffold(body: _body());
  }

  Widget _body() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        CarouselSlider(
          aspectRatio: width / height,
          scrollDirection: Axis.vertical,
          viewportFraction: 1.0,
          autoPlay: true,
          items: [
            EmotionCard(10, 0, _state.info.emotion),
            Container(color: Colors.grey),
            Container(color: Colors.green),
            Container(color: Colors.deepOrange),
          ],
        ),
        _dotsIndicator(),
      ],
    );
  }

  Widget _dotsIndicator() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DotsIndicator(
          dotsCount: _pageCount,
          position: _currentPage.toDouble(),
          decorator: DotsDecorator(
            activeColor: Provider.of<DashboardxColors>(context).activeColor,
            color: Provider.of<DashboardxColors>(context).passiveColor,
            size: Size.square(5.0),
          ),
        ),
      ),
    );
  }
}
