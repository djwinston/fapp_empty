import 'package:fapp_empty/pages/home_screen.dart';
import 'package:fapp_empty/pages/game_screen.dart';
import 'package:fapp_empty/pages/time_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Named Routes Demo', initialRoute: '/', routes: {
    '/': (context) => const HomeScreen(),
    '/second': (context) => const GameScreen(),
    '/third': (context) => const TimeScreen(),
  }));
}
