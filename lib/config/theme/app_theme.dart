import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.teal,
  Colors.orange,
  Colors.pink,
  Colors.brown,
  Colors.grey,
  Colors.indigo,
  Colors.blueGrey,
  Colors.black,
  Colors.white,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected Color must be greater than 0'),
        assert(selectedColor < colorList.length,
            'Selected Color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: AppBarTheme(
        centerTitle: true,
      ));
}