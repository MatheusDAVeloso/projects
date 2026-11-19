import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application/utils/utils_string.dart';

class HistoryScreen extends StatefulWidget {
  final String text;
  final String title;
  final VoidCallback onComplete;
  const new({super.key, required this.title, required this.text, required this.onComplete});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final int caracterSeparator = 540;
  int _currentIndex = 0;
  final List<String> _sections = <String>[];

  @override
  void initState() {
    super.initState();

    if (widget.text.length < caracterSeparator) {
      _sections.add(widget.text);
      return;
    }

    separeSections(_sections, widget.text);
  }

  void separeSections(List<String> sections, String rawText) {
    String textLeft = '';

    if (rawText.length > caracterSeparator) {
      // ————————————————————
      // Check if is inside a letter
      int? result = getTheLastSpaceIndex(rawText.substring(0, caracterSeparator));
      if (result == null) {
        log('ERRO');
        return;
      }

      sections.add('${rawText.substring(0, result)}...');
      textLeft = rawText.substring(result);
    }

    if (textLeft.length > caracterSeparator) {
      separeSections(sections, textLeft);
    } else {
      sections.add(textLeft);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            spacing: 32.0,
            children: [
              Column(
                spacing: 16,
                children: [
                  Row(
                    spacing: 4.0,
                    children: [
                      for (int i = 0; i < _sections.length; i++) ...[
                        Expanded(
                          child: Container(
                            height: 4.0,
                            decoration: BoxDecoration(
                              color: (_currentIndex >= i) ? Colors.black : Colors.grey,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  Text(
                    '${_currentIndex + 1} / ${_sections.length}',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              Column(
                spacing: 8.0,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    child: Text(
                      _sections[_currentIndex],
                      textAlign: TextAlign.justify,
                      maxLines: 16,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    spacing: 8.0,
                    children: [
                      Expanded(
                        child: FilledButton(
                          onPressed: () {
                            setState(() {
                              if (_currentIndex - 1 != -1) {
                                _currentIndex--;
                              }
                            });
                          },
                          child: Text('<'),
                        ),
                      ),
                      Expanded(
                        child: FilledButton(
                          onPressed: () {
                            if (_currentIndex + 1 == _sections.length) {
                              widget.onComplete();
                              return;
                            }

                            setState(() {
                              if (_currentIndex + 1 < _sections.length) {
                                _currentIndex++;
                              }
                            });
                          },
                          child: Text('>'),
                        ),
                      ),
                    ],
                  ),
                  OutlinedButton(
                    onPressed: () {
                      widget.onComplete();
                    },
                    child: Text('Pular >>'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
