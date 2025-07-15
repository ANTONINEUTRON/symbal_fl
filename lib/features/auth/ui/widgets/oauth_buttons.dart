import 'package:flutter/material.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';

class OAuthButtons extends StatelessWidget {
  const OAuthButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.grey),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center content
            children: [
              Image.asset(
                'assets/images/google_logo.png', // Add Apple logo image asset here
                height: 25.0,
              ),
              SizedBox(width: 8.0), // Space between icon and text
              Text(
                'Sign in with Google',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ).addSpacing(bottom: 12),
        // Apple Sign In Button
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.grey),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/apple_logo.png',
                height: 25.0,
              ),
              SizedBox(width: 8.0), // Space between icon and text
              Text(
                'Get magic link',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
         Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 1,
                color: Color(0XFFD7D7D7),
              ),
            ),
            Text(
              'Or use email',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0XFF7A7979),
                fontSize: 14,
              ),
            ).addSpacing(horizontal: 8.0),
            Expanded(
              child: Divider(
                thickness: 1,
                color: Color(0XFFD7D7D7),
              ),
            ),
          ],
        ).addSpacing(vertical: 16),
      ],
    );
  }
}
