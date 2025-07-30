import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final TextEditingController password;
  final bool obscureText;

  const CustomInput({
    super.key,
    required this.label,
    required this.password,
    this.obscureText = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: password,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
