import 'package:HW2/widgets/calculatorButtons/button_add.dart';
import 'package:HW2/widgets/calculatorButtons/button_backspace.dart';
import 'package:HW2/widgets/calculatorButtons/button_c.dart';
import 'package:HW2/widgets/calculatorButtons/button_calculate.dart';
import 'package:HW2/widgets/calculatorButtons/button_ce.dart';
import 'package:HW2/widgets/calculatorButtons/button_divide.dart';
import 'package:HW2/widgets/calculatorButtons/button_multiply.dart';
import 'package:HW2/widgets/calculatorButtons/button_number.dart';
import 'package:HW2/widgets/calculatorButtons/button_point.dart';
import 'package:HW2/widgets/calculatorButtons/button_subtract.dart';
import 'package:HW2/widgets/display_answer.dart';
import 'package:HW2/widgets/display_calculation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorScreenLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.history),
              onPressed: () {
                Navigator.pushNamed(context, '/history');
              }),
        ],
      ),
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 5,
              child: ListView(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                reverse: true,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: DisplayAnswer(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: DisplayCalculation(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonC(),
                      ButtonCE(),
                      ButtonBackspace(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonNumber(number: 7),
                      ButtonNumber(number: 8),
                      ButtonNumber(number: 9),
                      ButtonDivide(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonNumber(number: 4),
                      ButtonNumber(number: 5),
                      ButtonNumber(number: 6),
                      ButtonMultiply(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonNumber(number: 1),
                      ButtonNumber(number: 2),
                      ButtonNumber(number: 3),
                      ButtonSubtract(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonNumber(number: 0),
                      ButtonPoint(),
                      ButtonCalculate(),
                      ButtonAdd(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
