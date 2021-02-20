import 'package:bmi_calculator/components/bottom_large_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kCalPageTitle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kReusableActiveCardColor,
              cardChild: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'NORMAL',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '22.1',
                      style: KCalculatedResultTextStyle,
                    ),
                    Text(
                      "You have a normal body weight. Great job!",
                      style: kResultPageBodyStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: BottomLargeButton(
              buttonName: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
