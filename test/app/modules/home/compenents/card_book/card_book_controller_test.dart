import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:yomu_app/app/modules/home/compenents/card_book/card_book_controller.dart';
import 'package:yomu_app/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  CardBookController cardbook;

  setUp(() {
    cardbook = HomeModule.to.get<CardBookController>();
  });

  group('CardBookController Test', () {
    test("First Test", () {
      expect(cardbook, isInstanceOf<CardBookController>());
    });

    test("Set Value", () {
      expect(cardbook.value, equals(0));
      cardbook.increment();
      expect(cardbook.value, equals(1));
    });
  });
}
