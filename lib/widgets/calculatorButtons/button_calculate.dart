import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:HW2/providers/calculator_model.dart';
import 'package:provider/provider.dart';

class ButtonCalculate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.indigo,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          '=',
          style: TextStyle(fontSize: 25),
        ),
        onPressed: () {
          Provider.of<CalculatorModel>(context, listen: false).calculate();
        });
  }
}
