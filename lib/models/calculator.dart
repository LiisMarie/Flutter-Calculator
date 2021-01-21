class Calculator {
  String _currentCalculation = '';
  String _currentlyDisplayed = '0';
  double _answer = 0;
  bool calculated = false;
  bool _showLastResult = false;
  String _lastOperation = '';
  List<List<String>> _history = [];

  String get currentCalculation => _currentCalculation;

  String get currentlyDisplayed => _currentlyDisplayed;

  List<List<String>> get history => _history;

  // BUTTONS PRESSED
  void addNumber(int number) {
    // 0-9
    if (calculated) clearAllInput();

    calculated = false;

    if (double.parse(_currentlyDisplayed) == 0) {
      if (!_currentlyDisplayed.contains('.'))
        _currentlyDisplayed = number.toString();
      else
        _currentlyDisplayed += number.toString();
    } else {
      if (parseAnswer() == _currentlyDisplayed && _showLastResult) {
        _currentlyDisplayed = number.toString();
        _showLastResult = false;
      } else
        _currentlyDisplayed += number.toString();
    }
  }

  void backspace() {
    // ⌫
    if (calculated) {
      _currentCalculation = '';
      _lastOperation = '';
      return;
    }

    if (_answer.toString() == _currentlyDisplayed) return;

    if (_currentlyDisplayed == '0') return;

    if (_currentlyDisplayed.isNotEmpty)
      _currentlyDisplayed =
          _currentlyDisplayed.substring(0, _currentlyDisplayed.length - 1);

    if (_currentlyDisplayed.isEmpty) _currentlyDisplayed = '0';
  }

  void clearAllInput() {
    // C
    _currentCalculation = '';
    _currentlyDisplayed = '0';
    _answer = 0;
    _lastOperation = '';
    calculated = false;
  }

  void clearMostRecentInput() {
    // CE
    _currentlyDisplayed = '0';

    if (calculated) clearAllInput();
  }

  void add() {
    // +
    calculateAndSetAnswer('+');
  }

  void subtract() {
    // -
    calculateAndSetAnswer('-');
  }

  void multiply() {
    // x
    calculateAndSetAnswer('x');
  }

  void divide() {
    // ÷
    calculateAndSetAnswer('÷');
  }

  void calculate() {
    // =
    calculateAndSetAnswer('=');
    calculated = true;
    _history.insert(0, [_currentCalculation, _currentlyDisplayed]);
  }

  void addPoint() {
    // .
    if (parseAnswer() == _currentlyDisplayed) {
      _currentlyDisplayed = '0.';
      return;
    }
    if (!_currentlyDisplayed.contains('.')) _currentlyDisplayed += '.';
  }

  void deleteHistory() {
    _history = [];
  }

  // HELPERS
  void calculateAndSetAnswer(String operator) {
    if (calculated) {
      _currentCalculation = '';
      _lastOperation = '';
      _answer = 0;
    }
    calculated = false;
    _currentCalculation +=
        num.parse(_currentlyDisplayed).toString() + ' ' + operator + ' ';

    switch (_lastOperation) {
      case '':
        _answer = double.parse(_currentlyDisplayed);
        break;

      case '+':
        _answer += double.parse(_currentlyDisplayed);
        break;

      case '-':
        _answer -= double.parse(_currentlyDisplayed);
        break;

      case '÷':
        _answer = _answer / double.parse(_currentlyDisplayed);
        break;

      case 'x':
        _answer *= double.parse(_currentlyDisplayed);
        break;

      default:
        break;
    }
    _lastOperation = operator;
    _currentlyDisplayed = parseAnswer();
    _showLastResult = true;
  }

  String parseAnswer() {
    return num.parse(_answer.toString())
        .toString()
        .replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "");
  }
}
