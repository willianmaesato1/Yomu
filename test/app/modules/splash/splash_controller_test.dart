import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:yomu_app/app/modules/splash/splash_controller.dart';
import 'package:yomu_app/app/app_module.dart';

void main() {
  initModule(AppModule());
  SplashController splash;

  setUp(() {
    splash = AppModule.to.get<SplashController>();
  });

  group('SplashController Test', () {
    test("First Test", () {
      expect(splash, isInstanceOf<SplashController>());
    });

    test("Set Value", () {
    });
  });
}
