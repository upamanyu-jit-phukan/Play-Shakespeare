import 'package:flutter/material.dart';
import 'package:play_shakespeare/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Color(0xFFE8D9C4), // Pale
      // backgroundColor: const Color(0xFFC7CFC9), // Moonit Sage
      // backgroundColor: const Color(0xFFc0bfbf), // ice-iy
      // backgroundColor: const Color(0xFFD7CDAC), // light-yellowish
      // backgroundColor: const Color(0xFFE8D9C4), // Beige
      // backgroundColor: const Color(0xFFFFFBF0), // Ivory Whisper
      backgroundColor: const Color(0xFFF0E7D5), // Vanilla Cream
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: size.width * 0.75),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.03),
                const Text(
                  'Play Shakespeare',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    // color: Color(0xFF3E160C), // Rough Brown (for contrast)
                    // color: const Color(0xFF3E160C), // Vino
                    // color: Color(0xFF53161D), // Bordeaux Velvet
                    color: Color(0xFF4B3935), // Mocha Earth
                    fontWeight: FontWeight.w900,
                    height: 1.4,
                    letterSpacing: 1.2,
                  ),
                ),
                const Spacer(),
                Container(
                  constraints: BoxConstraints(maxWidth: size.width * 0.65),
                  child: const Text(
                    'Pray, dost thou come in pursuit of wisdom, or to prove thy worth?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      // color: Color(0xFF342316), // Wetlands Swamp
                      // color: Color(0xFF462506), // Bistre
                      // color: Color(0xFF53161D), // Bordeaux Velvet
                      color: Color(0xFF4B3935), // Mocha Earth
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      text: 'Learn',
                      onTap: () => Navigator.pushNamed(context, '/learn-room'),
                      isHome: true,
                    ),
                    CustomButton(
                      text: 'Compete',
                      onTap: () => Navigator.pushNamed(context, '/compete-room'),
                      isHome: true,
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
