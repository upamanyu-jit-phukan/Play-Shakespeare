import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isHome;
  final Color bgColor;
  final Color fgColor;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.isHome = false,
    this.bgColor = const Color(0xFF53161D), // Bordeaux Velvet
    this.fgColor = const Color(0xFFFFFBF0), // Ivory Whisper

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        // backgroundColor: Color(0xFF3E160C), // Rough Brown 
        backgroundColor: bgColor,
        // foregroundColor: const Color(0xFFC7CFC9), // Moonit Sage
        foregroundColor: fgColor,
        minimumSize: Size(isHome ? size.width * 0.2 : size.width, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 4,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
