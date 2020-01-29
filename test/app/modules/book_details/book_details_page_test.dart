import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:yomu_app/app/modules/book_details/book_details_page.dart';

main() {
  testWidgets('BookDetailsPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(BookDetailsPage(title: 'BookDetails')));
    final titleFinder = find.text('BookDetails');
    expect(titleFinder, findsOneWidget);
  });
}
