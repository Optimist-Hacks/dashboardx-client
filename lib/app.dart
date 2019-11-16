import 'package:dashboardx/service/preferences_service.dart';
import 'package:dashboardx/ui/dashboardx_colors.dart';
import 'package:dashboardx/ui/page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dashboardx/service/api_service.dart';
import 'package:dashboardx/utils/log.dart';

const _tag = "app";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final apiService = ApiService();
    final preferencesService = PreferencesService();

    return StreamBuilder<bool>(
      initialData: preferencesService.darkMode(),
      stream: preferencesService.darkModeSubject,
      builder: (context, snapshot) {
        Log.d(_tag, "darkMode = ${snapshot.data}");
        final colors = DashboardxColors(snapshot.data);

        return MultiProvider(
          providers: [
            Provider.value(value: apiService),
            Provider.value(value: preferencesService),
            Provider.value(value: colors),
          ],
          child: MaterialApp(
            title: "Dashboardx",
            theme: ThemeData(
              canvasColor: Colors.transparent,
              scaffoldBackgroundColor: colors.backgroundColor,
              fontFamily: 'Averta CY',
            ),
            routes: {
              MainPage.routeName: (context) => MainPage(),
            },
            home: MainPage(),
          ),
        );
      },
    );
  }
}
