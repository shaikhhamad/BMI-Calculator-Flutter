import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/helper/SizeConfig.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: SizeConfig.blockSizeHorizontal*15,
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical*1,
        ),
        Text(
          label,
          style: TextStyle(color: Colors.white,
            fontSize:SizeConfig.blockSizeHorizontal*5,fontWeight: FontWeight.bold,),
        )
      ],
    );
  }
}
