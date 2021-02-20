import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'screens/Input_page.dart';

const mainPrimaryColor = Color(0xFF0A0E21);
const scaFoldColor = Color(0xFF0A0E21);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: mainPrimaryColor,
        scaffoldBackgroundColor: scaFoldColor,
      ),
      home: InputPage(),
    );
  }
}
