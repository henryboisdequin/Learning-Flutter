import 'package:flutter_test/flutter_test.dart';
import 'package:myFlutterApp/src/pages/HomePage.dart';

void main() {
  testWidgets('HomePage has list of photos', (WidgetTester tester) async {
    await tester.pumpWidget(HomePage());

    // Create the Finders
    final findWidget = find.byWidget(HomePage());

    expect(findWidget, findsOneWidget);
  });
}
