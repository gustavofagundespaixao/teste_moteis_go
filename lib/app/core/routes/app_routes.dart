import 'package:flutter/material.dart';
import 'package:teste_moteis_go/app/modules/home/home_page.dart';
import 'package:teste_moteis_go/app/modules/splash/splash_page.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes() {
    return {
      SplashPage.routeName: (context) => SplashPage(),
      HomePage.routeName: (context) => HomePage(),
    };
  }
}
