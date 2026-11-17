import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/presentation/navigation/game_routes.dart';

class StartScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'RPG Medieval',
              ),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, GameRoutes.initialHistory);
                },
                child: Text('Jogar'),
              ),
              FilledButton(
                onPressed: () {
                  if (Platform.isAndroid) {
                    SystemNavigator.pop();
                  } else if (Platform.isIOS) {
                    exit(0);
                  }
                },
                child: Text('Sair'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
