import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:yomu_app/app/widgets/custom_dialog/custom_dialog_controller.dart';
import 'package:yomu_app/app/app_module.dart';

void main() {
  initModule(AppModule());
  CustomDialogController customdialog;

  setUp(() {
    customdialog = AppModule.to.get<CustomDialogController>();
  });

  group('CustomDialogController Test', () {
    test("First Test", () {
      expect(customdialog, isInstanceOf<CustomDialogController>());
    });

    test("Set Value", () {
      expect(customdialog.value, equals(0));
      customdialog.increment();
      expect(customdialog.value, equals(1));
    });
  });
}
