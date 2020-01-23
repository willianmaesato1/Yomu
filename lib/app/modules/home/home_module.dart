import 'package:yomu_app/app/modules/home/home_repository.dart';
import 'package:yomu_app/app/modules/home/compenents/card_book/card_book_controller.dart';
import 'package:yomu_app/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:yomu_app/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeRepository()),
        Bind((i) => CardBookController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [Router('/', child: (_, args) => HomePage())];

  static Inject get to => Inject<HomeModule>.of();
}
