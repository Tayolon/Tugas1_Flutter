import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Customtext extends StatelessWidget {
  final bool isNumber;
  final TextEditingController controller;
  final String label;
  final Color color;
  final bool pass;

  const Customtext({
    super.key,
    required this.label,
    required this.color,
    required this.pass,
    required this.controller,
    required this.isNumber,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      inputFormatters: isNumber ?
      [FilteringTextInputFormatter.digitsOnly] : [],  
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: color),
      ),
    );
  }
}
