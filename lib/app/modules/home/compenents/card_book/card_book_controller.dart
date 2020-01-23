import 'package:mobx/mobx.dart';

part 'card_book_controller.g.dart';

class CardBookController = _CardBookBase with _$CardBookController;

abstract class _CardBookBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
