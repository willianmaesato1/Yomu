import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:yomu_app/app/modules/login/components/sign_in/sign_in_repository.dart';
import 'package:yomu_app/utils/api_response.dart';

part 'sign_in_controller.g.dart';

class SignInController = _SignInBase with _$SignInController;

abstract class _SignInBase with Store {

  final SignInRepository signInRepository;

  _SignInBase(this.signInRepository);

  @observable
  String _emailSignIn;

  @observable
  String _passwordSignIn;

  @observable
  bool progressSignIn = false;


  @action
  void loginWithEmail() {}

  @action
  void setEmailSignIn(String newEmail) => _emailSignIn = newEmail;

  @action
  void setPasswordSignIn(String newPassword) => _passwordSignIn = newPassword;

  @action
  void _setProgressSignIn(bool newProgressSignIn) =>
      progressSignIn = newProgressSignIn;

  @action
  Future signInWithEmail() async {
    _setProgressSignIn(true);

    var userAuth = await signInRepository.signInWithEmail(
        email: _emailSignIn, password: _passwordSignIn);

    if (userAuth is bool) {
      if (userAuth) {
        /*
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => Home()));*/
      } else {
        _setProgressSignIn(false);
        /*
        await DialogWidget(icon: Icons.error, context: context)
            .dialogErrorLogin(
                title: 'Login Failure',
                description: 'General login failure. Please try again later');*/
      }
    } else {
      _setProgressSignIn(false);
      /*await DialogWidget(icon: Icons.error, context: context)
          .dialogErrorLogin(title: 'Login Failure', description: userAuth);*/
    }
  }

  @action
  Future<void> signInWithFacebook() async {
    ApiResponse loginFacebook = await signInRepository.signInWithFacebook();
    if (loginFacebook.ok) {
      Modular.to.pushReplacementNamed("/Home");
    }
  }

  @action
  Future<void> signInWithGoogle() async {
    ApiResponse loginGoogle = await signInRepository.signInWithGoogle();
    if (loginGoogle.ok) {
      Modular.to.pushReplacementNamed("/Home");
    }
  }

  @action
  Future<void> signInWithTwitter() async {}
}
