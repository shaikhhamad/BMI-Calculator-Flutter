import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/components/reusable_card.dart';
import 'package:flutter_app/components/bottom_button.dart';
import 'package:flutter_app/helper/SizeConfig.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(color: Colors.white,
                fontSize:SizeConfig.blockSizeHorizontal*10,fontWeight: FontWeight.bold,),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(color: Color(0xFF24D876),
                      fontSize:SizeConfig.blockSizeHorizontal*7,fontWeight: FontWeight.bold,),
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(color: Colors.white,
                      fontSize:SizeConfig.blockSizeHorizontal*17,fontWeight: FontWeight.bold,),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                      fontSize:SizeConfig.blockSizeHorizontal*5,fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
