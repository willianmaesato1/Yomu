import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:yomu_app/utils/api_response.dart';

class HomeRepository extends Disposable {
  Future fetchPost(Dio client) async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts/1');
    return response.data;
  }

  Future getBooks() async{
    final books =  await Firestore.instance.collection('books').getDocuments();
    if (books.documents != null) {
      return ApiResponse.ok(msg: 'Ok',result: ObservableList.of(books.documents));
    } else {
      return ApiResponse.error(msg: 'Error',result: ObservableList.of(null));
    }
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
