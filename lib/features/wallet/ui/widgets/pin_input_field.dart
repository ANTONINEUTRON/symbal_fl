import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinInputField extends StatefulWidget {
  const PinInputField({
    super.key,
    required this.onChanged,
    this.length = 6,
    this.obscureText = true,
    this.autofocus = true,
  });

  final Function(String) onChanged;
  final int length;
  final bool obscureText;
  final bool autofocus;

  @override
  State<PinInputField> createState() => _PinInputFieldState();
}

class _PinInputFieldState extends State<PinInputField> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A3E),
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(12),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color(0xFFCC00FF), width: 2),
      borderRadius: BorderRadius.circular(12),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color(0xFF3A3A4E),
        border: Border.all(color: const Color(0xFFCC00FF)),
      ),
    );

    final errorPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Colors.redAccent, width: 2),
      borderRadius: BorderRadius.circular(12),
    );

    return Column(
      children: [
        Pinput(
          controller: _controller,
          focusNode: _focusNode,
          length: widget.length,
          obscureText: widget.obscureText,
          obscuringCharacter: '●',
          autofocus: widget.autofocus,
          defaultPinTheme: defaultPinTheme,
          focusedPinTheme: focusedPinTheme,
          submittedPinTheme: submittedPinTheme,
          errorPinTheme: errorPinTheme,
          pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
          showCursor: true,
          cursor: Container(
            width: 2,
            height: 24,
            decoration: BoxDecoration(
              color: const Color(0xFFCC00FF),
              borderRadius: BorderRadius.circular(1),
            ),
          ),
          onChanged: widget.onChanged,
          hapticFeedbackType: HapticFeedbackType.lightImpact,
          onClipboardFound: (value) {
            debugPrint('onClipboardFound: $value');
            _controller.setText(value);
          },
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.security,
              size: 16,
              color: Colors.white54,
            ),
            const SizedBox(width: 8),
            Text(
              'Your PIN is encrypted and secure',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
