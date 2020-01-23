import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:yomu_app/app/modules/login/components/sign_in/sign_in_controller.dart';
import 'package:yomu_app/app/modules/login/login_module.dart';

void main() {
  initModule(LoginModule());
  SignInController signin;

  setUp(() {
    signin = LoginModule.to.get<SignInController>();
  });

  group('SignInController Test', () {
    test("First Test", () {
      expect(signin, isInstanceOf<SignInController>());
    });

    test("Set Value", () {
    });
  });
}
