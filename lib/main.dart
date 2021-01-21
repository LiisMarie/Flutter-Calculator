import 'package:HW2/providers/calculator_model.dart';
import 'package:HW2/screens/calculator_screen_portrait.dart';
import 'package:HW2/screens/calculator_screen_landscape.dart';
import 'package:HW2/screens/history_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new CalculatorModel(),
      child: MaterialApp(
        title: 'Calculator',
        initialRoute: '/',
        theme: ThemeData.dark(),
        routes: {
          '/': (_) => OrientationBuilder(
                builder: (BuildContext context, Orientation orientation) {
                  return orientation == Orientation.landscape
                      ? CalculatorScreenLandscape()
                      : CalculatorScreenPortrait();
                },
              ),
          '/history': (_) => HistoryScreen(),
        },
      ),
    );
  }
}
