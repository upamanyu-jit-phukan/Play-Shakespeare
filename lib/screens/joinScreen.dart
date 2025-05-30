import 'package:flutter/material.dart';
import 'package:typeracer/widgets/customTextField.dart';

class joinScreen extends StatelessWidget {
  joinScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Join Arena!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            customTextField(str: 'Arena Name'),
            SizedBox(
              height: size.height * 0.008,
            ),
            customTextField(str: 'Arene Unique Id')
          ],
        ),
      ),
    );
  }
}
