import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:flutter/material.dart';
import "theme.dart";

extension StringExtension on String {
  String capitalize() =>
      "${this[0].toUpperCase()}${substring(1).toLowerCase()}";

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split('_')
      
      .map((str) => str.capitalize())
      .join(' ');
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'BMI Calculator',
      home: const BMICalculator(),
      theme: theme,
    ),
  );
}
