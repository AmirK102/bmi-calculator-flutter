import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const BottomContainerHeight = 80.0;
const ReusableActiveCardColor = Color(0xFF1D1E33);
const ReusableInactiveleCardColor = Color(0xFF111328);
const BottomContainerColor = Color(0xFFEB1555);

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    colour: selectedGender == GenderType.male
                        ? ReusableActiveCardColor
                        : ReusableInactiveleCardColor,
                    cardChild: IconContent(
                      cardIcon: FontAwesomeIcons.male,
                      cardLabel: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    colour: selectedGender == GenderType.female
                        ? ReusableActiveCardColor
                        : ReusableInactiveleCardColor,
                    cardChild: IconContent(
                      cardIcon: FontAwesomeIcons.female,
                      cardLabel: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: ReusableActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: ReusableActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: ReusableActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: BottomContainerColor,
            width: double.infinity,
            height: BottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
