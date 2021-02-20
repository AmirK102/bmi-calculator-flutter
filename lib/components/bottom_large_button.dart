import 'package:flutter/cupertino.dart';

import '../constant.dart';

class BottomLargeButton extends StatelessWidget {
  BottomLargeButton({@required this.buttonName, @required this.onTap});
  final String buttonName;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Text(
            buttonName,
            style: kBOttomLargeButtonStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
      onTap: onTap,
    );
  }
}
