import 'package:flutter/material.dart';
import 'package:play_shakespeare/widgets/custom_button.dart';
import 'package:play_shakespeare/widgets/custom_text_field.dart';

class LearnRoomScreen extends StatefulWidget {
  const LearnRoomScreen({Key? key}) : super(key: key);

  @override
  State<LearnRoomScreen> createState() => _LearnRoomScreenState();
}

class _LearnRoomScreenState extends State<LearnRoomScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFF0E7D5), // Vanilla Cream
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: size.width * 0.85),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Learn room screen',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    // color: Color(0xFFDAC1B1), // Silk
                    color: Color(0xFF4B3935), // Mocha Earth
                  ),
                ),
                SizedBox(height: size.height * 0.08),
                CustomTextField(
                  controller: _nameController,
                  hintText: 'Difficulty of Learning',
                ),
                SizedBox(height: size.height * 0.03),
                CustomButton(
                  text: 'Start Learning',
                  onTap: () {},
                  bgColor: Color(0xFF4B3935), // Mocha Earth
                  fgColor: const Color(0xFFF0E7D5), // Vanilla Cream
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
