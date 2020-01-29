import 'package:yomu_app/app/modules/book_details/book_details_module.dart';
import 'package:yomu_app/app/modules/home/home_module.dart';
import 'package:yomu_app/app/modules/login/login_module.dart';
import 'package:yomu_app/app/widgets/custom_dialog/custom_dialog_controller.dart';
import 'package:yomu_app/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:yomu_app/app/app_widget.dart';
import 'package:yomu_app/app/modules/splash/splash_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CustomDialogController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: SplashModule()),
        Router('/Login', module: LoginModule()),
        Router('/Home', module: HomeModule()),
        Router('/Book_details', module: BookDetailsModule(),transition: TransitionType.fadeIn),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
