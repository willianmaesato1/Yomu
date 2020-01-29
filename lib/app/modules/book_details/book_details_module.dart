import 'package:yomu_app/app/modules/book_details/book_details_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:yomu_app/app/modules/book_details/book_details_page.dart';

class BookDetailsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => BookDetailsController()),
      ];

  @override
  List<Router> get routers => [Router('/', child: (_, args) => BookDetailsPage(book: args.data))];

  static Inject get to => Inject<BookDetailsModule>.of();
}
