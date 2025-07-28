import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/core/route/app_route.gr.dart';
import 'package:symbal_fl/features/auth/ui/cubits/auth_cubit.dart';
import 'package:symbal_fl/features/auth/ui/widgets/oauth_buttons.dart';

class CreateAccountTab extends StatefulWidget {
  const CreateAccountTab({super.key});

  @override
  State<CreateAccountTab> createState() => _CreateAccountTabState();
}

class _CreateAccountTabState extends State<CreateAccountTab> {
  String? errorMessage;
  bool showPasword = false;
  final _formKey = GlobalKey<FormState>();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    
    // if (!RegExp(r'[A-Z]').hasMatch(value)) {
    //   return 'Password must contain at least one uppercase letter';
    // }
    
    // if (!RegExp(r'[a-z]').hasMatch(value)) {
    //   return 'Password must contain at least one lowercase letter';
    // }
    
    // if (!RegExp(r'[0-9]').hasMatch(value)) {
    //   return 'Password must contain at least one number';
    // }
    
    return null;
  }

  @override
  Widget build(BuildContext context) {
    bool isProcessing = false;
    var authCubit = context.watch<AuthCubit>();

    // switch (authCubit.state.registerStatus) {
    //   case RegisterStatus.Processing:
    //     isProcessing = true;
    //     break;
    //   case RegisterStatus.Error:
    //     WidgetsBinding.instance.addPostFrameCallback((duration) {
    //       alertUser(
    //         context: context,
    //         message: "An error occur while creating user account",
    //       );
    //       authCubit.resetErrorStatus();
    //     });
    //     break;
    //   case RegisterStatus.Success:
    //     context.router.push(const VerifyEmailRoute());
    //     break;
    //   default:
    //     break;
    // }

    return Form(
      key: _formKey,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),

        children: [
        const OAuthButtons(),
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
              // controller: _emailController,
              onChanged: (value) => authCubit.setEmail(value),
              validator: _validateEmail,
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
              // controller: _passwordController,
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
                    showPasword = !showPasword;
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

        Wrap(
          alignment: WrapAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                text: 'By creating an account, you agree with our ',
                style: TextStyle(
                  color: Colors.grey,
                ), // Default style for the rest of the text
                children: [
                  TextSpan(
                    text: 'Terms of Service',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Terms of Service clicked')),
                        );
                      },
                  ),
                  TextSpan(
                    text: ' and ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextSpan(
                    text: 'Privacy \nPolicy',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Privacy policy clicked')),
                        );
                      },
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ).addSpacing(vertical: 8),
        const SizedBox(height: 20.0),

        ElevatedButton(
          onPressed: isProcessing
              ? null
              : () {
                  if (_formKey.currentState?.validate() ?? false) {
                    authCubit.createAccount();
                  }
                },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: const Text(
            'Create Account',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 20.0),
      ],
    ),
    );
  }
}
