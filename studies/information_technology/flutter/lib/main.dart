import 'package:flutter/material.dart';
import 'package:flutter_application/presentation/navigation/game_routes.dart';
import 'package:flutter_application/presentation/screen/menus/start_screen.dart';
import 'package:flutter_application/presentation/screen/others/initial_history.dart';
import 'package:flutter_application/presentation/screen/places/house.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RPG Medieval',
      initialRoute: '/',
      routes: {
        '/': (context) => const StartScreen(),
        GameRoutes.initialHistory: (context) => InitialHistory(),
        GameRoutes.home: (context) => const House(),
      },
    );
  }
}
