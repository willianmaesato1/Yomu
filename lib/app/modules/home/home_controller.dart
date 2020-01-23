import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import 'package:yomu_app/app/modules/home/home_module.dart';
import 'package:yomu_app/app/modules/home/home_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {

  HomeRepository homeRepository = HomeModule.to.get();

  @observable
  ObservableList<DocumentSnapshot> listBooks;

  @observable
  int navigationIndex = 0;

  @action
  Future<void> searchBooks() async {
    await homeRepository.getBooks().then((result){
      if(result.ok){
        listBooks = result.result;
      }
    });

  }

  @action
  void navigationPage(int pageIndex) => navigationIndex = pageIndex;
}
