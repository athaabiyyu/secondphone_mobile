import 'package:flutter/material.dart';
import 'package:secondphone_mobile/app/theme/app_spacing.dart';
import 'package:secondphone_mobile/shared/widgets/app_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  static final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Text('Second Phone'),
                  const SizedBox(height: AppSpacing.lg),
                  const Text('Create Account'),

                  // Name
                  AppTextField(
                    label: 'Name',
                    controller: _nameController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Name is required';
                      }

                      if (value.trim().length < 6) {
                        return 'Name must be at least 6 characters';
                      }

                      if (value.trim().length > 150) {
                        return 'Name must not exceed 150 characters';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: AppSpacing.md),

                  // Email
                  AppTextField(
                    label: 'Email',
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Email is required';
                      }

                      if (!emailRegex.hasMatch(value.trim())) {
                        return 'Please enter a valid email';
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: AppSpacing.md),

                  // Password
                  AppTextField(
                    label: 'Password',
                    controller: _passwordController,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }

                      if (value.length < 8) {
                        return 'Password must be at least 8 characters';
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: AppSpacing.md),

                  // Confirm Password
                  AppTextField(
                    label: 'Confirm Password',
                    controller: _confirmPasswordController,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Confirm password is required';
                      }

                      if (value != _passwordController.text) {
                        return 'Passwords do not match';
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: AppSpacing.lg),

                  ElevatedButton(
                    onPressed: () {
                      _formKey.currentState?.validate();
                    },
                    child: const Text('Create Account'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}