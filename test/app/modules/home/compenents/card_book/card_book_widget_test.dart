import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:yomu_app/app/modules/home/compenents/card_book/card_book_widget.dart';

main() {
  testWidgets('CardBookWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CardBookWidget()));
    final textFinder = find.text('CardBook');
    expect(textFinder, findsOneWidget);
  });
}
