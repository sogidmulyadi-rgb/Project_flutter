import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final String hint;
  final TextEditingController txtcontroller;

  const Mytextfield({
    super.key,
    required this.hint,
    required this.txtcontroller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtcontroller,
      decoration: InputDecoration(hintText: hint, border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}