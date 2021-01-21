import 'package:HW2/providers/calculator_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DisplayAnswer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorModel>(
        builder: (context, calculatorModel, child) {
      return Text(
        calculatorModel.currentlyDisplayed,
        style: TextStyle(fontSize: 50),
      );
    });
  }
}
