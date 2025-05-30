import 'package:flutter/material.dart';
import 'package:typeracer/screens/createScreen.dart';
import 'package:typeracer/screens/joinScreen.dart';
import 'package:typeracer/widgets/customButton.dart';

void temp() {}

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Type Racer',
            style: TextStyle(
              // color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 0.2 * size.height,
          ),
          Text(
            'Join/Create Arena To Play!!',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: size.width * 0.1,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            CustomButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => joinScreen()));
              },
              str: 'Join',
            ),

            CustomButton(
              str: 'Create',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => createScreen()));
              },
            )
          ]),
        ],
      ),
    );
  }
}
