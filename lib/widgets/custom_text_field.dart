import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xFF4B3935), // Mocha Earth
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xFF4B3935), // Mocha Earth
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        // fillColor: Color(0xFF043222), // Evergreen Shadow
        fillColor: Color(0xFFF0E7D5), // Vanilla Cream
        // fillColor: Color(0xFFDCD7C9), // Au Lait
        // fillColor: Color(0xFFDDE6ED), // Alice Blue
        // fillColor: Color(0xFFF5F5F5), // Pure Mist
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          // color: Color(0xFFF6E9D9), // Almond Cream
          // color: Color(0xFF4B3935), // Mocha Earth
          // color: Color(0xFF9DB2BF), // Harper's Blue
        ),
      ),
    );
  }
}
