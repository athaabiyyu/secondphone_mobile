import 'package:flutter/material.dart';
import 'package:secondphone_mobile/app/theme/app_theme.dart';
import 'package:secondphone_mobile/app/router/app_router.dart';

class SecondPhoneApp extends StatelessWidget {
  const SecondPhoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Second Phone',
      theme: AppTheme.light,
      routerConfig: AppRouter().router,
    );
  }
}

