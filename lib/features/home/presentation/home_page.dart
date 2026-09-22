import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPhone Marketplace'),
      ),
      body: const Center(
        child: Text(
          'Selamat datang di SecondPhone!',
          style: TextStyle(fontSize: 16, color: AppColors.textPrimary),
        ),
      ),
    );
  }
}