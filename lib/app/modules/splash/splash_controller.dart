import 'package:flutter/material.dart';
import 'package:teste_moteis_go/app/core/services/navigation_service.dart';
import 'package:teste_moteis_go/app/modules/home/home_page.dart';

class SplashController extends ChangeNotifier {
  Future<void> initState() async {
    await Future.delayed(Duration(seconds: 1));

    ContextService()
        .navigatorKey
        .currentState
        ?.pushReplacementNamed(HomePage.routeName);
  }
}
