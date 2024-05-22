import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String label;
  final String? Function(String?)? validator;
  final Function(String) onChanged;

  const InputTextField({
    super.key,
    required this.label,
    this.validator,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        validator: validator,
        onChanged: onChanged,
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
