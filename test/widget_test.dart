import 'package:flutter_test/flutter_test.dart';

import 'package:HW2/main.dart';

void main() {
  testWidgets('Build app', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
  });
}
