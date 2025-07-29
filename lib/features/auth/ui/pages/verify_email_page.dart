import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/core/route/app_route.gr.dart';

@RoutePage()
class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({super.key});

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  @override
  Widget build(BuildContext context) {
    // var authCubit = context.watch<AuthCubits>();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Icon(Icons.mail_lock, size: 150).addSpacing(bottom: 8),
          Text(
            'Verify your email',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Color(0xFF003366), // Dark blue
            ),
          ).addSpacing(bottom: 16),
          Text(
            'Click on the link we sent to',
            style: TextStyle(fontSize: 16, color: Color(0XFF636363)),
          ),
          Text(
            'test@email.com',
            style: TextStyle(fontSize: 16, color: Color(0XFF636363)),
          ),
          Text(
            'to verify your email',
            style: TextStyle(fontSize: 16, color: Color(0XFF636363)),
          ),
          Spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                context.router.push(ProfileRoute());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF003366), // Dark blue
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'I have verified my email',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ).addSpacing(horizontal: 16),
    );
  }
}
