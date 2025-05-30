import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  customTextField({super.key, required this.str});
  String str;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      child: TextField(
        decoration:
            InputDecoration(border: OutlineInputBorder(), labelText: str),
      ),
    );
  }
}
