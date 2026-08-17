import 'package:flutter/material.dart';
import 'package:secondphone_mobile/app/theme/app_radius.dart';
import 'package:secondphone_mobile/app/theme/app_spacing.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.label,
    this.controller,
    this.obscureText = false,
    this.validator,
  });

  final String label;
  final TextEditingController? controller;
  final bool obscureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: AppSpacing.sm),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          validator: validator,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                AppRadius.md,
              ),
            ),
          ),
        ),
      ],
    );
  }
}