import 'package:HW2/providers/calculator_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DisplayHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorModel>(
        builder: (context, calculatorModel, child) {
      return Container(
        child: ListView.separated(
          itemCount: calculatorModel.history.length,
          separatorBuilder: (BuildContext context, int index) => Divider(
            color: Colors.black26,
          ),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              tileColor: Colors.white30,
              title: Text(
                '${calculatorModel.history[index][0]}',
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white54),
              ),
              subtitle: Text(
                '${calculatorModel.history[index][1]}',
                textScaleFactor: 2,
                style: TextStyle(color: Colors.white),
              ),
            );
          },
        ),
      );
    });
  }
}
