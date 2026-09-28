import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const Mybutton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF8CC8F5),
        foregroundColor: Colors.black,
        minimumSize: const Size(132, 56),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        side: const BorderSide(color: Color(0xFF152B45), width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(text),
    );
  }
}
