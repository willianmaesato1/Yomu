// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginBase, Store {
  final _$progressRegisterAtom = Atom(name: '_LoginBase.progressRegister');

  @override
  bool get progressRegister {
    _$progressRegisterAtom.context.enforceReadPolicy(_$progressRegisterAtom);
    _$progressRegisterAtom.reportObserved();
    return super.progressRegister;
  }

  @override
  set progressRegister(bool value) {
    _$progressRegisterAtom.context.conditionallyRunInAction(() {
      super.progressRegister = value;
      _$progressRegisterAtom.reportChanged();
    }, _$progressRegisterAtom, name: '${_$progressRegisterAtom.name}_set');
  }

  final _$currentIndexAtom = Atom(name: '_LoginBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.context.enforceReadPolicy(_$currentIndexAtom);
    _$currentIndexAtom.reportObserved();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.context.conditionallyRunInAction(() {
      super.currentIndex = value;
      _$currentIndexAtom.reportChanged();
    }, _$currentIndexAtom, name: '${_$currentIndexAtom.name}_set');
  }

  final _$_LoginBaseActionController = ActionController(name: '_LoginBase');

  @override
  void pageCurrent(int valuePage) {
    final _$actionInfo = _$_LoginBaseActionController.startAction();
    try {
      return super.pageCurrent(valuePage);
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }
}
