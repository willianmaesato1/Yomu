import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:yomu_app/app/modules/login/components/sign_in/sign_in_widget.dart';

main() {
  testWidgets('SignInWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SignInWidget()));
    final textFinder = find.text('SignIn');
    expect(textFinder, findsOneWidget);
  });
}
