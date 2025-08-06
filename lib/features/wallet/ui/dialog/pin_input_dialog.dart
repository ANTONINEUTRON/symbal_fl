import 'package:flutter/material.dart';
import 'package:symbal_fl/features/wallet/ui/widgets/pin_input_field.dart';


class PinInputDialog extends StatelessWidget {
  const PinInputDialog({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onPinEntered,
  });

  final String title;
  final String subtitle;
  final Function(String) onPinEntered;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFF1A1A2E),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          PinInputField(
            onChanged: (pin) {
              if (pin.length == 6) {
                Navigator.of(context).pop();
                onPinEntered(pin);
              }
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text(
            'Cancel',
            style: TextStyle(color: Colors.white54),
          ),
        ),
      ],
    );
  }
}