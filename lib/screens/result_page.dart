import 'package:bmi_calculator/components/bottom_large_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {@required this.getResultText,
      @required this.getResultValue,
      @required this.getComment});

  final String getResultText;
  final String getResultValue;
  final String getComment;

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
              padding: EdgeInsets.all(20.0),
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
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      getResultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      getResultValue,
                      style: KCalculatedResultTextStyle,
                    ),
                    Text(
                      getComment,
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
