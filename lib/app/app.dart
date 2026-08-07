import 'package:flutter/material.dart';
import 'package:secondphone_mobile/app/config/app_config.dart';
import 'package:secondphone_mobile/app/router/app_router.dart';
import 'package:secondphone_mobile/app/theme/app_theme.dart';

class SecondPhoneApp extends StatelessWidget {
  const SecondPhoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConfig.appName,
      theme: AppTheme.light,
      routerConfig: AppRouter.router,
    );
  }
}