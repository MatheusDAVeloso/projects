import 'package:flutter/material.dart';

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
