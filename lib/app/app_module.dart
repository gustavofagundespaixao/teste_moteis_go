import 'package:flutter/material.dart';
import 'package:teste_moteis_go/app/core/routes/app_routes.dart';
import 'package:teste_moteis_go/app/core/services/navigation_service.dart';
import 'package:teste_moteis_go/app/core/theme/app_theme.dart';

class AppModule extends StatelessWidget {
  const AppModule({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: ContextService().navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Motéis GO',
      routes: AppRoutes.routes(),
      theme: AppTheme.theme(context),
    );
  }
}
