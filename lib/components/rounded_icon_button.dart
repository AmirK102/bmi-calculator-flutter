import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({@required this.icon, @required this.updateWeight});
  final IconData icon;
  final Function updateWeight;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: updateWeight,
      elevation: 0.0,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: kIconButtonFillColor,
      constraints: BoxConstraints.tightFor(
        width: 45.0,
        height: 45.0,
      ),
    );
  }
}
