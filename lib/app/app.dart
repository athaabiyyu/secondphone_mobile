import 'package:flutter/material.dart';
import 'package:secondphone_mobile/features/splash/presentation/page/splash_page.dart';

class SecondPhoneApp extends StatelessWidget {
  const SecondPhoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Second Phone',
      theme: ThemeData(),
      home: const SplashPage(title: 'Second Phone'),
    );
  }
}

