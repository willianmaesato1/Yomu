// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUpController on _SignUpBase, Store {
  final _$emailAtom = Atom(name: '_SignUpBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_SignUpBase.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$progressSignUpAtom = Atom(name: '_SignUpBase.progressSignUp');

  @override
  bool get progressSignUp {
    _$progressSignUpAtom.context.enforceReadPolicy(_$progressSignUpAtom);
    _$progressSignUpAtom.reportObserved();
    return super.progressSignUp;
  }

  @override
  set progressSignUp(bool value) {
    _$progressSignUpAtom.context.conditionallyRunInAction(() {
      super.progressSignUp = value;
      _$progressSignUpAtom.reportChanged();
    }, _$progressSignUpAtom, name: '${_$progressSignUpAtom.name}_set');
  }

  final _$signUpWithEmailAsyncAction = AsyncAction('signUpWithEmail');

  @override
  Future<dynamic> signUpWithEmail() {
    return _$signUpWithEmailAsyncAction.run(() => super.signUpWithEmail());
  }

  final _$_SignUpBaseActionController = ActionController(name: '_SignUpBase');

  @override
  dynamic setPassword(String newPassword) {
    final _$actionInfo = _$_SignUpBaseActionController.startAction();
    try {
      return super.setPassword(newPassword);
    } finally {
      _$_SignUpBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmail(String newEmail) {
    final _$actionInfo = _$_SignUpBaseActionController.startAction();
    try {
      return super.setEmail(newEmail);
    } finally {
      _$_SignUpBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic _setProgressLogin(bool newProgressSignUp) {
    final _$actionInfo = _$_SignUpBaseActionController.startAction();
    try {
      return super._setProgressLogin(newProgressSignUp);
    } finally {
      _$_SignUpBaseActionController.endAction(_$actionInfo);
    }
  }
}
