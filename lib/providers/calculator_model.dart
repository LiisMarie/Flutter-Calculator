import 'package:HW2/models/calculator.dart';
import 'package:flutter/cupertino.dart';

class CalculatorModel with ChangeNotifier {
  final _calculator = Calculator();

  String get currentCalculation => _calculator.currentCalculation;

  String get currentlyDisplayed => _calculator.currentlyDisplayed;

  List<List<String>> get history => _calculator.history;

  void addNumber(int number) {
    // 0-9
    _calculator.addNumber(number);
    notifyListeners();
  }

  void backspace() {
    // ⌫
    _calculator.backspace();
    notifyListeners();
  }

  void clearAllInput() {
    // C
    _calculator.clearAllInput();
    notifyListeners();
  }

  void clearMostRecentInput() {
    // CE
    _calculator.clearMostRecentInput();
    notifyListeners();
  }

  void add() {
    // +
    _calculator.add();
    notifyListeners();
  }

  void subtract() {
    // -
    _calculator.subtract();
    notifyListeners();
  }

  void multiply() {
    // x
    _calculator.multiply();
    notifyListeners();
  }

  void divide() {
    // ÷
    _calculator.divide();
    notifyListeners();
  }

  void calculate() {
    // =
    _calculator.calculate();
    notifyListeners();
  }

  void addPoint() {
    // .
    _calculator.addPoint();
    notifyListeners();
  }

  void deleteHistory() {
    _calculator.deleteHistory();
    notifyListeners();
  }
}
