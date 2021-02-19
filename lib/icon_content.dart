import 'package:flutter/material.dart';

import 'constant.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.cardLabel, @required this.cardIcon});
  final String cardLabel;
  final IconData cardIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardLabel,
          style: kCardLabelStyle,
        ),
      ],
    );
  }
}
