import 'package:flutter/material.dart';
import 'package:flutter_app/helper/SizeConfig.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(SizeConfig.blockSizeHorizontal*2),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(SizeConfig.blockSizeHorizontal*4),
        ),
      ),
    );
  }
}
