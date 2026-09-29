import 'package:flutter_test/flutter_test.dart';
import 'package:cprof/main.dart';

void main() {
  testWidgets('Cprof home screen loads', (WidgetTester tester) async {
    await tester.pumpWidget(const CprofApp());
    expect(find.text('Cprof — الكتاب التفاعلي'), findsOneWidget);
    expect(find.text('المستوى الرابع ابتدائي'), findsOneWidget);
    expect(find.text('الرياضيات'), findsOneWidget);
  });
}
