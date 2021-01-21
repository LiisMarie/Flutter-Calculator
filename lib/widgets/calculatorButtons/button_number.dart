import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:HW2/providers/calculator_model.dart';
import 'package:provider/provider.dart';

class ButtonNumber extends StatelessWidget {
  final int number;

  const ButtonNumber({@required this.number});

  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorModel>(builder: (context, counterModel, child) {
      return RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            number.toString(),
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Provider.of<CalculatorModel>(context, listen: false)
                .addNumber(number);
          });
    });
  }
}
