// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignInController on _SignInBase, Store {
  final _$_emailSignInAtom = Atom(name: '_SignInBase._emailSignIn');

  @override
  String get _emailSignIn {
    _$_emailSignInAtom.context.enforceReadPolicy(_$_emailSignInAtom);
    _$_emailSignInAtom.reportObserved();
    return super._emailSignIn;
  }

  @override
  set _emailSignIn(String value) {
    _$_emailSignInAtom.context.conditionallyRunInAction(() {
      super._emailSignIn = value;
      _$_emailSignInAtom.reportChanged();
    }, _$_emailSignInAtom, name: '${_$_emailSignInAtom.name}_set');
  }

  final _$_passwordSignInAtom = Atom(name: '_SignInBase._passwordSignIn');

  @override
  String get _passwordSignIn {
    _$_passwordSignInAtom.context.enforceReadPolicy(_$_passwordSignInAtom);
    _$_passwordSignInAtom.reportObserved();
    return super._passwordSignIn;
  }

  @override
  set _passwordSignIn(String value) {
    _$_passwordSignInAtom.context.conditionallyRunInAction(() {
      super._passwordSignIn = value;
      _$_passwordSignInAtom.reportChanged();
    }, _$_passwordSignInAtom, name: '${_$_passwordSignInAtom.name}_set');
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

  final _$signInWithEmailAsyncAction = AsyncAction('signInWithEmail');

  @override
  Future<dynamic> signInWithEmail() {
    return _$signInWithEmailAsyncAction.run(() => super.signInWithEmail());
  }

  final _$signInWithFacebookAsyncAction = AsyncAction('signInWithFacebook');

  @override
  Future<void> signInWithFacebook() {
    return _$signInWithFacebookAsyncAction
        .run(() => super.signInWithFacebook());
  }

  final _$signInWithGoogleAsyncAction = AsyncAction('signInWithGoogle');

  @override
  Future<void> signInWithGoogle() {
    return _$signInWithGoogleAsyncAction.run(() => super.signInWithGoogle());
  }

  final _$signInWithTwitterAsyncAction = AsyncAction('signInWithTwitter');

  @override
  Future<void> signInWithTwitter() {
    return _$signInWithTwitterAsyncAction.run(() => super.signInWithTwitter());
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

  @override
  void _setProgressSignIn(bool newProgressSignIn) {
    final _$actionInfo = _$_SignInBaseActionController.startAction();
    try {
      return super._setProgressSignIn(newProgressSignIn);
    } finally {
      _$_SignInBaseActionController.endAction(_$actionInfo);
    }
  }
}
