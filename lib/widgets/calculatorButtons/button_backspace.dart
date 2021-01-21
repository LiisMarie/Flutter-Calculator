import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:HW2/providers/calculator_model.dart';
import 'package:provider/provider.dart';

class ButtonBackspace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.blueGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          '⌫',
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () {
          Provider.of<CalculatorModel>(context, listen: false).backspace();
        });
  }
}
