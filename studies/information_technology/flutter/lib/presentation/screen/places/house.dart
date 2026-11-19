import 'package:flutter/material.dart';
import 'package:flutter_application/data/model/character_status.dart';
import 'package:flutter_application/presentation/screen/templates/game_action_screen.dart';

class House extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return GameActionScreen(
      title: 'CASA',
      description: 'Você acordou em sua casa. Um clima frio e nublado invadia sua janela, trazendo consigo um fresco cheiro de pão. Jogado por debaixo de sua porta, há um cartaz com um desenho de uma garota, e destacado em cima, um texto escrito "DESAPARECIDA".',
      characterStatus: CharacterStatus(life: 100, strength: 20),
    );
  }
}
