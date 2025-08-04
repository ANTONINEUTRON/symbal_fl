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
      title: Text(title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(subtitle),
          SizedBox(height: 20),
          PinInputField(
            onChanged: (pin) {
              if (pin.length == 6) {
                onPinEntered(pin);
              }
            },
          ),
        ],
      ),
    );
  }
}