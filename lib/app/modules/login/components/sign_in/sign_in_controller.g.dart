// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignInController on _SignInBase, Store {
  final _$emailSignInAtom = Atom(name: '_SignInBase.emailSignIn');

  @override
  String get emailSignIn {
    _$emailSignInAtom.context.enforceReadPolicy(_$emailSignInAtom);
    _$emailSignInAtom.reportObserved();
    return super.emailSignIn;
  }

  @override
  set emailSignIn(String value) {
    _$emailSignInAtom.context.conditionallyRunInAction(() {
      super.emailSignIn = value;
      _$emailSignInAtom.reportChanged();
    }, _$emailSignInAtom, name: '${_$emailSignInAtom.name}_set');
  }

  final _$passwordSignInAtom = Atom(name: '_SignInBase.passwordSignIn');

  @override
  String get passwordSignIn {
    _$passwordSignInAtom.context.enforceReadPolicy(_$passwordSignInAtom);
    _$passwordSignInAtom.reportObserved();
    return super.passwordSignIn;
  }

  @override
  set passwordSignIn(String value) {
    _$passwordSignInAtom.context.conditionallyRunInAction(() {
      super.passwordSignIn = value;
      _$passwordSignInAtom.reportChanged();
    }, _$passwordSignInAtom, name: '${_$passwordSignInAtom.name}_set');
  }

  final _$progressSignInAtom = Atom(name: '_SignInBase.progressSignIn');

  @override
  bool get progressSignIn {
    _$progressSignInAtom.context.enforceReadPolicy(_$progressSignInAtom);
    _$progressSignInAtom.reportObserved();
    return super.progressSignIn;
  }

  @override
  set progressSignIn(bool value) {
    _$progressSignInAtom.context.conditionallyRunInAction(() {
      super.progressSignIn = value;
      _$progressSignInAtom.reportChanged();
    }, _$progressSignInAtom, name: '${_$progressSignInAtom.name}_set');
  }

  final _$_SignInBaseActionController = ActionController(name: '_SignInBase');

  @override
  void loginWithEmail() {
    final _$actionInfo = _$_SignInBaseActionController.startAction();
    try {
      return super.loginWithEmail();
    } finally {
      _$_SignInBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmailSignIn(String newEmail) {
    final _$actionInfo = _$_SignInBaseActionController.startAction();
    try {
      return super.setEmailSignIn(newEmail);
    } finally {
      _$_SignInBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPasswordSignIn(String newPassword) {
    final _$actionInfo = _$_SignInBaseActionController.startAction();
    try {
      return super.setPasswordSignIn(newPassword);
    } finally {
      _$_SignInBaseActionController.endAction(_$actionInfo);
    }
  }
}
