import 'package:flutter/material.dart';


// This is the input field which I used in my own login screen. Feel free to do your own styling.
class InputField extends StatelessWidget {
  InputField({
    super.key,
    required this.controller,
    this.obscureText = false,
    this.hintText,
    this.maxLength
  });

  TextEditingController controller;
  bool obscureText;
  String? hintText;
  int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          maxLength: maxLength,
          controller: controller,
          decoration: InputDecoration(hintText: hintText),
          obscureText: obscureText,
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
