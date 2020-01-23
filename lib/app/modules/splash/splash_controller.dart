import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:yomu_app/app/model/user.dart';

part 'splash_controller.g.dart';

class SplashController = _SplashBase with _$SplashController;

abstract class _SplashBase with Store {

  @action
  void verificaLogin(BuildContext context) {
    Future<FirebaseUser> futureUser = FirebaseAuth.instance.currentUser();
    Future<QuerySnapshot> userDatabase = Firestore.instance
        .collection('users')
        .where("email", isEqualTo: User.email).getDocuments();

    Future futureB = Future.delayed(Duration(seconds: 3));

    Future.wait([futureB, futureUser, userDatabase]).then((List values) {
      if (values[1] != null) {
        User.nome = values[2].documents[0].data['name'];
        User.email = values[2].documents[0].data['email'];
        User.urlPhoto = values[2].documents[0].data['photoUrl'];
        User.token = values[2].documents[0].data['token'];
        Navigator.pushReplacementNamed(context, '/Home');
      } else {
        Navigator.pushReplacementNamed(context, '/Login');
      }
    });
  }
}
