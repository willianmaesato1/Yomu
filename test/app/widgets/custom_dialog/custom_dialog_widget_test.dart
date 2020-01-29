import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:yomu_app/app/widgets/custom_dialog/custom_dialog_widget.dart';

main() {
  testWidgets('CustomDialogWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CustomDialogWidget()));
    final textFinder = find.text('CustomDialog');
    expect(textFinder, findsOneWidget);
  });
}
