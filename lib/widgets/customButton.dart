import 'dart:math';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.str, required this.onTap});
  final String str;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // TODO: implement build
    // throw UnimplementedError();
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((callback) {
          if (callback.contains(MaterialState.pressed)) {
            return const Color.fromARGB(139, 179, 0, 255);
          }
          return const Color.fromARGB(255, 162, 0, 255);
        }),

        // backgroundColor:Color.from(alpha: alpha, red: red, green: green, blue: blue)
      ),
      child: Text(
        str,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
