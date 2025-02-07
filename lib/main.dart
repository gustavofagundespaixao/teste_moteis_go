import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_moteis_go/app/app_module.dart';
import 'package:teste_moteis_go/app/modules/home/home_controller.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeController()),
      ],
      child: AppModule(),
    ),
  );
  // runApp(AppModule());
}
