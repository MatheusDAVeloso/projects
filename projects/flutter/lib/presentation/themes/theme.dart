import 'package:flutter/material.dart';

// title: size 32.0, fontweith bold
// padding in scaffold 16.0
// normal text: size 16.0
// destacado text: size 20.0, bold

ThemeData theme = ThemeData(
  // needs to match the fontFamily value to the family name declared in the pubspec.yaml file
  fontFamily: 'Roboto',
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Colors.black),
      textStyle: WidgetStatePropertyAll(
        TextStyle(
          fontSize: 16.0,
        ),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(Colors.black),
      textStyle: WidgetStatePropertyAll(
        TextStyle(
          fontSize: 16.0,
        ),
      ),
    ),
  ),
);
