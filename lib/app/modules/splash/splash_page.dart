import 'package:flutter/material.dart';
import 'package:teste_moteis_go/app/core/theme/app_colors.dart';
import 'package:teste_moteis_go/app/modules/splash/splash_controller.dart';

class SplashPage extends StatefulWidget {
  static String routeName = '/';

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late SplashController controller;

  @override
  void initState() {
    super.initState();
    controller = SplashController();
    controller.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 34,
        children: [
          Text(
            'Móteis GO',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.white),
          ),
        ],
      ),
    );
  }
}
