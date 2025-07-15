import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/core/route/app_route.gr.dart';
import 'package:symbal_fl/features/auth/ui/widgets/oauth_buttons.dart';

class CreateAccountTab extends StatefulWidget {
  const CreateAccountTab({
    super.key,
  });

  @override
  State<CreateAccountTab> createState() => _CreateAccountTabState();
}

class _CreateAccountTabState extends State<CreateAccountTab> {
  String? errorMessage;
  bool showPasword = false;

  @override
  Widget build(BuildContext context) {
    bool isProcessing = false;
    // var authCubit = context.watch<AuthCubits>();

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

    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const OAuthButtons(),
        const Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 1,
                color: Color(0XFFD7D7D7),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Or set up with email',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF7A7979),
                  fontSize: 14,
                ),
              ),
            ),
            Expanded(
              child: Divider(
                thickness: 1,
                color: Color(0XFFD7D7D7),
              ),
            ),
          ],
        ).addSpacing(vertical: 16),

        // Email Text Field
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Email Address",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0XFF1F1F1F),
              ),
            ).addSpacing(bottom: 8),
            TextFormField(
              // controller: _emailController,
              onChanged: (value) => {},//authCubit.setEmail(value),
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
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0XFF1F1F1F),
              ),
            ).addSpacing(bottom: 8),
            TextFormField(
              // controller: _passwordController,
              onChanged: (value) => {},//authCubit.setPassword(value),
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
                  onTap: ()=>setState(() {
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

        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '* Password must be at least 8 characters long',
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colors.black),
          ),
        ),
        const SizedBox(height: 22.0),

        const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text.rich(
            TextSpan(
              text: 'By creating an account, you agree\nwith our ',
              style: TextStyle(
                  color: Colors.grey), // Default style for the rest of the text
              children: [
                TextSpan(
                  text: 'Terms of Service',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    color: Color(0XFF444444),
                  ),
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
                    color: Color(0XFF444444),
                  ),
                ),
                TextSpan(
                  text: '.',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          )
        ]),
        const SizedBox(height: 20.0),

        ElevatedButton(
          onPressed: isProcessing
              ? null
              : () {
                  // authCubit.onCreateAccount();

                  context.router.push(ProfileRoute());
                },
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            backgroundColor: const Color.fromARGB(255, 0, 53, 102),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: const Text(
            'Create Account',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
