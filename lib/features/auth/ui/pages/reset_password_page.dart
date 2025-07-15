import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';

@RoutePage()
class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    final _cPasswordController = TextEditingController();
    String? errorMessage;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Reset your password",
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              "Please input your new password\nIt must be different from the previous",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white54,
              ),
            ),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF1F1F1F),
                  ),
                ).addSpacing(bottom: 8),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter new password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
              ],
            ).addSpacing(bottom: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Confirm Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF1F1F1F),
                  ),
                ).addSpacing(bottom: 8),
                TextFormField(
                  controller: _cPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter new password again',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // context.router.push(BottomnavViewRoute());
              },
              child: Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ).addSpacing(
          vertical: 24,
          horizontal: 16,
        ),
      ),
    );
  }
}
