import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dashboardx/data/model/state/main/main_state.dart';
import 'package:dashboardx/domain/main_bloc.dart';
import 'package:dashboardx/service/api_service.dart';
import 'package:dashboardx/service/preferences_service.dart';
import 'package:dashboardx/ui/card/emergency_card.dart';
import 'package:dashboardx/ui/card/emission_card.dart';
import 'package:dashboardx/ui/card/emotion_card.dart';
import 'package:dashboardx/ui/card/emotion_tip_card.dart';
import 'package:dashboardx/ui/card/noise_card.dart';
import 'package:dashboardx/ui/card/weather_card.dart';
import 'package:dashboardx/ui/dashboardx_colors.dart';
import 'package:dashboardx/utils/texts.dart';
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

  int _pageCount = 5;

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
    if (_state.info.warning != null &&
        !Texts.isEmpty(_state.info.warning.name) &&
        !Texts.isEmpty(_state.info.warning.description) &&
        ApiService.houseId == _state.info.warning.housingId) {
      return EmergencyCard(
        _state.info.warning.name,
        _state.info.warning.description,
      );
    }

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        CarouselSlider(
          aspectRatio: width / height,
          scrollDirection: Axis.horizontal,
          viewportFraction: 1.0,
          autoPlay: false,
          onPageChanged: _onPageChanged,
          items: [
            EmissionCard(),
            NoiseCard(),
            EmotionCard(_state.info.emotionDaily),
            EmotionTopCard(_state.info.emotionDaily),
            WeatherCard(),
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
          position: _state.pageIndex.toDouble(),
          decorator: DotsDecorator(
            activeColor: Provider.of<DashboardxColors>(context).activeColor,
            color: Provider.of<DashboardxColors>(context).passiveColor,
            size: Size.square(5.0),
          ),
        ),
      ),
    );
  }

  void _onPageChanged(int currentIndex) {
    _mainBloc.changePage(currentIndex);
  }
}
