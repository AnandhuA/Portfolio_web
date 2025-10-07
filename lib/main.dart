import 'package:portfolio/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app_theme.dart';
import 'package:portfolio/presentation/pages/home/home_page.dart';
import 'package:portfolio/presentation/routes/routes.dart';
import 'package:portfolio/values/values.dart';
import 'package:layout/layout.dart';

import 'configure_web.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
   configureApp();
  runApp(Aerium());
}

class Aerium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp(
        title: StringConst.APP_TITLE,
        theme: AppTheme.lightThemeData,
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.homePageRoute,
        onGenerateRoute: RouteConfiguration.onGenerateRoute,
      ),
    );
  }
}


