import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/core/route/app_route.gr.dart';
import 'package:symbal_fl/features/auth/ui/cubits/auth_cubit.dart';
import 'package:symbal_fl/features/auth/ui/widgets/oauth_buttons.dart';

class LoginTab extends StatefulWidget {
  const LoginTab({super.key});

  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  String? errorMessage;
  bool showPasword = false;
  final _formKey = GlobalKey<FormState>();

  // Controllers to track field values
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    return null;
  }

  
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    
    return null;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var authCubit = context.read<AuthCubit>();
    return Form(
      key: _formKey,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          // Email Text Field
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Email Address",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white70,
                ),
              ).addSpacing(bottom: 8),
      
              TextFormField(
                onChanged: (value) => authCubit.setEmail(value),
                      validator: _validateEmail, 
                      keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 12.0,
                  ),
                ),
              ),
            ],
          ).addSpacing(bottom: 16),
      
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Password",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white70,
                ),
              ).addSpacing(bottom: 8),
              TextFormField(
                onChanged: (value) => authCubit.setPassword(value),
                      validator: _validatePassword,
                obscureText: !showPasword,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 12.0,
                  ),
                  suffixIcon: InkWell(
                    onTap: () => setState(() {
                      showPasword = true;
                    }),
                    child: Icon(
                      showPasword ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
      
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () => context.router.push(const ForgotPasswordRoute()),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                textAlign: TextAlign.end,
              ),
            ),
          ),
      
          const SizedBox(height: 8.0),
      
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                // Form is valid, proceed with login
                authCubit.login();
              }
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text(
              'Log In',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
