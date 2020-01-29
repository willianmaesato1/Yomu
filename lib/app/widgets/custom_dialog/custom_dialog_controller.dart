import 'package:mobx/mobx.dart';

part 'custom_dialog_controller.g.dart';

class CustomDialogController = _CustomDialogBase with _$CustomDialogController;

abstract class _CustomDialogBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
