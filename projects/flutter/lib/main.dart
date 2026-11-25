import 'package:flutter/material.dart';
import 'package:flutter_application/presentation/navigation/game_routes.dart';
import 'package:flutter_application/presentation/screen/menus/start_screen.dart';
import 'package:flutter_application/presentation/screen/places/house.dart';
import 'package:flutter_application/presentation/screen/templates/history_screen.dart';
import 'package:flutter_application/presentation/themes/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RPG Medieval',
      theme: theme,
      initialRoute: GameRoutes.initialRoute,
      routes: {
        GameRoutes.initialRoute: (context) => const StartScreen(),
        GameRoutes.initialHistory: (context) => HistoryScreen(
          title: 'PROLOGO',
          text: 'Um certo rei por nome de Deived, detinha o reino de Calot. Ele devia muito dinheiro a outro reino, o Sequest, devido a sua falta de controle financeira que o costumou a fazer empréstimos para bancar sua vida luxuosa. Cansado da dívida apenas ir aumentando e nunca ser pago, Sequest ameaçava a família real de Calot, mas como as ameaças duraram muito tempo, rei Deived começou a achar que Vingue — rei de Sequest — estava apenas blefando e que esse dia nunca chegaria. Porém, em uma certa noite, o castelo de Calot foi invadido e a princesa Prin — filha de Deived — foi sequestrada e colocada em um castelo protegido por um dragão. Rei Vingue exigiu a quantia de \$1000 raridins (a moeda da região de Histo). Rei de Calot endividado e preocupado, não sabendo a quem recorrer, decidiu espalhar cartazes pela cidade a fim de que algum herói ou grupo de corajosos pudessem resgatá-la.',
          onComplete: () {
            Navigator.of(context).pushNamed(GameRoutes.home);
          },
        ),
        GameRoutes.home: (context) => House(),
      },
    );
  }
}
