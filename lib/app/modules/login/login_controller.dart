import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {


  @observable
  bool progressRegister = false;

  @observable
  int currentIndex = 0;


  @action
  void pageCurrent(int valuePage) => currentIndex = valuePage;

}
