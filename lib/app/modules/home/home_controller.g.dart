// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$listBooksAtom = Atom(name: '_HomeBase.listBooks');

  @override
  ObservableList<DocumentSnapshot> get listBooks {
    _$listBooksAtom.context.enforceReadPolicy(_$listBooksAtom);
    _$listBooksAtom.reportObserved();
    return super.listBooks;
  }

  @override
  set listBooks(ObservableList<DocumentSnapshot> value) {
    _$listBooksAtom.context.conditionallyRunInAction(() {
      super.listBooks = value;
      _$listBooksAtom.reportChanged();
    }, _$listBooksAtom, name: '${_$listBooksAtom.name}_set');
  }

  final _$navigationIndexAtom = Atom(name: '_HomeBase.navigationIndex');

  @override
  int get navigationIndex {
    _$navigationIndexAtom.context.enforceReadPolicy(_$navigationIndexAtom);
    _$navigationIndexAtom.reportObserved();
    return super.navigationIndex;
  }

  @override
  set navigationIndex(int value) {
    _$navigationIndexAtom.context.conditionallyRunInAction(() {
      super.navigationIndex = value;
      _$navigationIndexAtom.reportChanged();
    }, _$navigationIndexAtom, name: '${_$navigationIndexAtom.name}_set');
  }

  final _$searchBooksAsyncAction = AsyncAction('searchBooks');

  @override
  Future<void> searchBooks() {
    return _$searchBooksAsyncAction.run(() => super.searchBooks());
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void navigationPage(int pageIndex) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.navigationPage(pageIndex);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
