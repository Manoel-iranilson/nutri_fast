import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String label;

  const InputTextField({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          fillColor: Colors.white,
          filled: true,
          label: Text(label),
        ),
      ),
    );
  }
}
