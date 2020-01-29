import 'package:mobx/mobx.dart';

part 'sign_up_controller.g.dart';

class SignUpController = _SignUpBase with _$SignUpController;

abstract class _SignUpBase with Store {

  @observable
  String email;

  @observable
  String password;

  @observable
  bool progressSignUp = false;

  @action
  setPassword(String newPassword) => password = newPassword;

  @action
  setEmail(String newEmail) => email = newEmail;

  @action
  _setProgressLogin(bool newProgressSignUp) =>
      progressSignUp = newProgressSignUp;

  @action
  Future signUpWithEmail() async {}
}
