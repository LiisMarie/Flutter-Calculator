import 'package:HW2/providers/calculator_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonDeleteHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: new Icon(Icons.delete),
        onPressed: () {
          Provider.of<CalculatorModel>(context, listen: false).deleteHistory();
        });
  }
}
