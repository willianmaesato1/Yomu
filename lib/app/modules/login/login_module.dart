import 'package:yomu_app/app/modules/login/components/sign_up/sign_up_repository.dart';
import 'package:yomu_app/app/modules/login/components/sign_in/sign_in_repository.dart';
import 'package:yomu_app/app/modules/login/components/sign_up/sign_up_controller.dart';
import 'package:yomu_app/app/modules/login/components/sign_in/sign_in_controller.dart';
import 'package:yomu_app/app/modules/login/login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:yomu_app/app/modules/login/login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SignUpRepository()),
        Bind((i) => SignInRepository()),
        Bind((i) => SignUpController()),
        Bind((i) => SignInController()),
        Bind((i) => LoginController()),
      ];

  @override
  List<Router> get routers => [Router('/', child: (_, args) => LoginPage())];

  static Inject get to => Inject<LoginModule>.of();
}
