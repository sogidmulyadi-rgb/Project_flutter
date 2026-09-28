import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mytextfield extends StatelessWidget {
  // variabel yang diperlukan
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
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        controller: txtController,
        decoration: InputDecoration(
          hintText: myHint,
          hintStyle: TextStyle(color: hintColor),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
