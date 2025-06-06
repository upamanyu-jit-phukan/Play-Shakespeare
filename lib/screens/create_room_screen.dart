import 'package:flutter/material.dart';
import 'package:play_shakespeare/utils/socket_methods.dart';
import 'package:play_shakespeare/widgets/custom_button.dart';
import 'package:play_shakespeare/widgets/custom_text_field.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final SocketMethods _socketMethods = SocketMethods();

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
                  'Create room screen',
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
                  hintText: 'Enter Title',
                ),
                SizedBox(height: size.height * 0.03),
                CustomButton(
                  text: 'Create Contest',
                  onTap: () => _socketMethods.createGame(
                    _nameController.text,
                  ),
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
