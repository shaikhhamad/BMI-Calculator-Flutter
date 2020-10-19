import 'package:flutter/material.dart';
import 'package:flutter_app/helper/SizeConfig.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: SizeConfig.blockSizeHorizontal*12,
        height: SizeConfig.blockSizeVertical*10,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
