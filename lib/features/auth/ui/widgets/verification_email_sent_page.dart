import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/features/app/cubits/app_cubit.dart';
import 'package:symbal_fl/features/auth/ui/cubits/auth_cubit.dart';

@RoutePage()
class VerificationEmailSentPage extends StatefulWidget {
  const VerificationEmailSentPage({super.key, this.email});

  final String? email;

  @override
  State<VerificationEmailSentPage> createState() => _VerificationEmailSentPageState();
}

class _VerificationEmailSentPageState extends State<VerificationEmailSentPage> {
  bool isCheckingVerification = false;
  bool canResendEmail = true;

  // @override
  // initState() {
  //   super.initState();

  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //         context.read<AppCubit>().setAlertMessage(
  //           "Account created successfully for ${context.read<AuthCubit>().state.user?.email}",
  //         );
  //       });
  //   // Optionally, you can start checking verification status here
  //   // checkEmailVerification();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Email verification icon
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              ),
              child: Icon(
                Icons.mark_email_read_outlined,
                size: 60,
                color: Theme.of(context).colorScheme.primary,
              ),
            ).addSpacing(bottom: 32),
        
            // Title
            const Text(
              'Check Your Email',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ).addSpacing(bottom: 16),
        
            // Description
            Text(
              'We\'ve sent a verification link to',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade300,
              ),
              textAlign: TextAlign.center,
            ).addSpacing(bottom: 8),
        
            // Email address
            Text(
              widget.email ?? 'your email address',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.primary,
              ),
              textAlign: TextAlign.center,
            ).addSpacing(bottom: 32),
        
            // Instructions
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF16213E),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.grey.shade600,
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Theme.of(context).colorScheme.tertiary,
                    size: 24,
                  ).addSpacing(bottom: 12),
                  Text(
                    'Click the verification link in your email to activate your account. After clicking the link, come back here and tap "I\'ve Verified My Email".',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade300,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ).addSpacing(bottom: 40),
        
            // Verification complete button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: isCheckingVerification
                    ? null
                    : () async {
                       context.read<AuthCubit>().checkEmailVerification();
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: isCheckingVerification
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      )
                    : const Text(
                        'I have verified my email',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
            ).addSpacing(bottom: 16),
        
            // Resend email button
            TextButton(
              onPressed: () async {
                // Simulate resending verification email
                // ScaffoldMessenger.of(context).showSnackBar(
                //   const SnackBar(
                //     content: Text('Verification email sent again!'),
                //     backgroundColor: Colors.green,
                //   ),
                // );
                if (canResendEmail) {
                  context.read<AppCubit>().setAlertMessage('Verification email sent again! can retry in 2 minutes');

                  canResendEmail = false;
                  await context.read<AuthCubit>().resendVerificationEmail();
                  // Re-enable after a delay
                  Future.delayed(const Duration(seconds: 120), () {
                    setState(() {
                      canResendEmail = true;
                    });
                  });
                }else{
                  context.read<AppCubit>().setAlertMessage('You can retry in 2 minutes');
                }
              },
              child: Text(
                'Didn\'t receive the email? Resend',
                style: TextStyle(
                  color: canResendEmail ? Theme.of(context).colorScheme.tertiary : Colors.grey.shade200,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              ),
            ).addSpacing(bottom: 24),
        
            // Additional help
            Text(
              'Check your spam folder if you don\'t see the email',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade500,
              ),
              textAlign: TextAlign.center,
            ).addSpacing(bottom: 16),
          ],
        ).addSpacing(vertical: 16, horizontal: 16),
      ),
    );
  }
}
