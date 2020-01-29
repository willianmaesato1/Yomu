import 'package:mobx/mobx.dart';

part 'book_details_controller.g.dart';

class BookDetailsController = _BookDetailsBase with _$BookDetailsController;

abstract class _BookDetailsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
