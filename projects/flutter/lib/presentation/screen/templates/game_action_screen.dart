import 'package:flutter/material.dart';
import 'package:flutter_application/data/model/character_status.dart';

class GameActionScreen extends StatelessWidget {
  final String title;
  final String description;
  final CharacterStatus characterStatus;
  const new({super.key, required this.title, required this.description, required this.characterStatus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              spacing: 4.0,
              children: [
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 2.0,
                ),
              ],
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.43,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Descrição',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 2.0,
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            description,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Status',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 2.0,
                          ),
                          SizedBox(height: 4.0),
                          Column(
                            spacing: 2.0,
                            children: [
                              Text(
                                '❤️ Vida: ${characterStatus.life}',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                '💪 Força: ${characterStatus.strength}',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 2.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.backpack,
                          color: Colors.brown,
                          size: 64.0,
                        ),
                        Expanded(
                          child: FilledButton(
                            onPressed: () {},
                            child: Text('Ações'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
