import 'package:mobx/mobx.dart';

part 'sign_up_controller.g.dart';

class SignUpController = _SignUpBase with _$SignUpController;

abstract class _SignUpBase with Store {
  @observable
  int value = 0;

  @observable
  bool progressSignUp = false;

  @action
  void increment() {
    value++;
  }

  @action
  void signUpWithEmail(){}
}
