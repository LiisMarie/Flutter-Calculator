import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:HW2/providers/calculator_model.dart';
import 'package:provider/provider.dart';

class ButtonPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          '.',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          Provider.of<CalculatorModel>(context, listen: false).addPoint();
        });
  }
}
