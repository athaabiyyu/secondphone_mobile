import 'package:flutter/material.dart';
import 'package:secondphone_mobile/features/splash/presentation/page/splash_page.dart';
import 'package:secondphone_mobile/app/theme/app_theme.dart';

class SecondPhoneApp extends StatelessWidget {
  const SecondPhoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Second Phone',
      theme: AppTheme.light,
      home: const SplashPage(title: 'Second Phone'),
    );
  }
}

