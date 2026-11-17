import 'package:flutter/material.dart';
import 'package:flutter_application/presentation/navigation/game_routes.dart';

class InitialHistory extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              spacing: 8.0,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Um certo rei por nome de Deived, detinha o reino de Calot. Ele devia muito dinheiro a outro reino, o Sequest, devido a sua falta de controle financeira que o costumou a fazer empréstimos para bancar sua vida luxuosa.',
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'Cansado da dívida apenas ir aumentando e nunca ser pago, Sequest ameaçava a família real de Calot, mas como as ameaças duraram muito tempo, rei Deived começou a achar que Vingue — rei de Sequest — estava apenas blefando e que esse dia nunca chegaria.',
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'Porém, em uma certa noite, o castelo de Calot foi invadido e a princesa Prin — filha de Deived — foi sequestrada e colocada em um castelo protegido por um dragão. Rei Vingue exigiu a quantia de \$1000 raridins (a moeda da região de Histo). Rei de Calot endividado e preocupado, não sabendo a quem recorrer, decidiu espalhar cartazes pela cidade a fim de que algum herói ou grupo de corajosos pudessem resgatá-la.',
                  textAlign: TextAlign.justify,
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.pushNamed(context, GameRoutes.home);
                  },
                  child: Text('Iniciar história'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
