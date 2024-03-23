import 'package:flutter/material.dart';


// This is the input field which I used in my own login screen. Feel free to do your own styling.
class InputField extends StatelessWidget {
  InputField({
    super.key,
    required this.controller,
    required this.title,
    this.obscureText = false,
  });

  TextEditingController controller;
  String title;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Enter ${title.toLowerCase()}',
            border: const OutlineInputBorder(),
            isDense: true,
            hintText: 'Enter ${title.toLowerCase()}',
          ),
          obscureText: obscureText,
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
