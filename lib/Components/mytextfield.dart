import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;
  final Color? hintColor;
  final EdgeInsetsGeometry margin;

  const Mytextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    this.hintColor,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: TextField(
        controller: txtController,
        decoration: InputDecoration(
          hintText: myHint,
          hintStyle: TextStyle(color: hintColor),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}