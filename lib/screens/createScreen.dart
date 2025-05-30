import 'package:flutter/material.dart';
import 'package:typeracer/widgets/customTextField.dart';

class createScreen extends StatelessWidget {
  createScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          // title: Text('Create '),
          ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create Arena!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            customTextField(str: 'Arena Name'),
          ],
        ),
      ),
    );
  }
}
