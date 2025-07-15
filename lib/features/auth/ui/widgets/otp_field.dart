import 'package:flutter/material.dart';

class OTPField extends StatelessWidget {
  const OTPField({
    super.key,
    required this.onValueChange,
  });

  final Function(String) onValueChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0XFFd9d9d9)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          maxLength: 1,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: InputBorder.none,
            counterText: "",
            hintText: "•",
            alignLabelWithHint: true,
            hintStyle: TextStyle(
              fontSize: 26,
              color: Color(0XFFd9d9d9),
            ),
          ),
          onChanged: (value) {
              onValueChange(value);
            // Move to next field if not empty
            if (value.isNotEmpty) {
              FocusScope.of(context).nextFocus();
            }else{
FocusScope.of(context).previousFocus();
            }
          },
        ),
      ),
    );
  }


}
