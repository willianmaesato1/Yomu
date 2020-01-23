import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:yomu_app/app/modules/login/components/sign_up/sign_up_widget.dart';

main() {
  testWidgets('SignUpWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SignUpWidget()));
    final textFinder = find.text('SignUp');
    expect(textFinder, findsOneWidget);
  });
}
