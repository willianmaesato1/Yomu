import 'package:flutter_modular/flutter_modular.dart';
import 'package:yomu_app/app/modules/home/home_module.dart';
import 'package:yomu_app/app/modules/login/login_module.dart';
import 'package:yomu_app/app/modules/splash/splash_controller.dart';
import 'package:yomu_app/app/modules/splash/splash_page.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => SplashController()),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_,args) => SplashPage()),
    Router('/Home', module: HomeModule()),
    Router('/Login', module: LoginModule()),
  ];

  static Inject get to => Inject<SplashModule>.of();
}
