import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:yomu_app/app/modules/book_details/book_details_controller.dart';
import 'package:yomu_app/app/modules/book_details/book_details_module.dart';

void main() {
  initModule(BookDetailsModule());
  BookDetailsController bookdetails;

  setUp(() {
    bookdetails = BookDetailsModule.to.get<BookDetailsController>();
  });

  group('BookDetailsController Test', () {
    test("First Test", () {
      expect(bookdetails, isInstanceOf<BookDetailsController>());
    });

    test("Set Value", () {
      expect(bookdetails.value, equals(0));
      bookdetails.increment();
      expect(bookdetails.value, equals(1));
    });
  });
}
