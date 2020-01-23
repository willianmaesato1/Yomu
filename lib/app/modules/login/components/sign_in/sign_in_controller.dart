import 'package:mobx/mobx.dart';

part 'sign_in_controller.g.dart';

class SignInController = _SignInBase with _$SignInController;

abstract class _SignInBase with Store {
  @observable
  String emailSignIn;

  @observable
  String passwordSignIn;

  @observable
  bool progressSignIn = false;

  @action
  void loginWithEmail() {}

  @action
  void setEmailSignIn(String newEmail) => emailSignIn = newEmail;

  @action
  void setPasswordSignIn(String newPassword) => passwordSignIn = newPassword;
}
