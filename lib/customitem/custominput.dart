import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onPressed;

  const CustomInput({
    super.key,
    required this.label,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 35,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.zero, // Remove default padding
          tapTargetSize: MaterialTapTargetSize.shrinkWrap, // shrink hitbox
        ),
        child: FittedBox(child: Text(label, style: TextStyle(fontSize: 100))),
      ),
    );
  }
}
