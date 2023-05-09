import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 99, 20, 228);

const List<Color> _colorThemes = [
  _customColor,
  Colors.purple,
  Colors.blue,
  Colors.orange,
  Colors.cyan,
  Colors.green,
  Colors.teal
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
