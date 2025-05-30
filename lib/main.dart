import 'package:flutter/material.dart';
import 'package:play_shakespeare/screens/learn_room_screen.dart';
import 'package:play_shakespeare/screens/home_screen.dart';
import 'package:play_shakespeare/screens/compete_room_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Play Shakespeare',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF7A2048), // Burgundy Red
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/learn-room': (context) => const LearnRoomScreen(),
        '/compete-room': (context) => const CompeteRoomScreen(),
      },
    );
  }
}
