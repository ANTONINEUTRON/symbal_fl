import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/core/route/app_route.gr.dart';
import 'package:symbal_fl/features/auth/ui/widgets/oauth_buttons.dart';

class LoginTab extends StatefulWidget {
  const LoginTab({super.key});

  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  String? errorMessage;
  bool showPasword = false;

  @override
  Widget build(BuildContext context) {
    // bool isProcessing = false;
    // var authCubit = context.watch<AuthCubits>();

    // switch (authCubit.state.loginStatus) {
    //   case LoginStatus.Processing:
    //     isProcessing = true;
    //     break;
    //   case LoginStatus.Error:
    //     WidgetsBinding.instance.addPostFrameCallback((duration) {
    //       alertUser(
    //         context: context,
    //         message: "An error occur while loging in",
    //       );
    //       authCubit.resetErrorStatus();
    //     });
    //     break;
    //   case LoginStatus.Success:
    //     context.router.replaceAll([const BottomnavViewRoute()]);
    //     break;
    //   default:
    //     break;
    // }

    return ListView(
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
              onChanged: (value) => {}, //authCubit.setEmail(value),
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
              onChanged: (value) => {}, // authCubit.setPassword(value),
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
              style: TextStyle(fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.tertiary,),
              textAlign: TextAlign.end,
            ),
          ),
        ),

        const SizedBox(height: 8.0),

        ElevatedButton(
          onPressed: false
              ? null
              : () {
                  // authCubit.loginWithEmailandPassowrd();
                  context.router.push(const ProfileRoute());
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
    );
  }
}
