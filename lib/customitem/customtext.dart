import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
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
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
     decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: color),
      ),
    );
  }
}