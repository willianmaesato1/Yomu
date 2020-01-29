import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:yomu_app/app/model/user.dart';
import 'package:yomu_app/utils/api_response.dart';
import 'package:http/http.dart' as http;

class SignInRepository extends Disposable {

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FacebookLogin _facebookSignIn = new FacebookLogin();

  Future signInWithEmail(
      {@required String email, @required String password}) async {
    try {
      var resultAuth = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      final FirebaseUser firebaseUser = resultAuth.user;

      final user = Usuario(
        nome: firebaseUser.displayName,
        email: firebaseUser.email,
        urlFoto: firebaseUser.photoUrl,
      );

      user.save();
      User.nome = firebaseUser.displayName;
      User.email = firebaseUser.email;
      User.urlPhoto = firebaseUser.photoUrl;
      User.token = firebaseUser.uid;
      return user != null;
    } catch (e) {
      return e.message;
    }
  }

  Future<ApiResponse> signInWithFacebook() async {
    try {
      final facebookLoginResult = await _facebookSignIn.logIn(['email']);

      print(facebookLoginResult.status.toString());
      switch (facebookLoginResult.status) {
        case FacebookLoginStatus.error:
          break;
        case FacebookLoginStatus.cancelledByUser:
          break;
        case FacebookLoginStatus.loggedIn:
          final AuthCredential credential = FacebookAuthProvider.getCredential(
              accessToken: facebookLoginResult.accessToken.token);
          await _auth.signInWithCredential(credential);
          var graphResponse = await http.get(
              'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email,picture.height(200)&access_token=${facebookLoginResult.accessToken.token}');
          var profile = json.decode(graphResponse.body);
          print(profile.toString());
          break;
      }
      return ApiResponse.ok(result: facebookLoginResult.accessToken.userId);
    } catch (e) {
      return ApiResponse.error(result: e);
    }

  }

  Future<ApiResponse> signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      print("Google User:  ${googleUser.displayName}");

      //Credencias para o Firebase
      final AuthCredential credential = GoogleAuthProvider.getCredential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      //Login no Firebase
      AuthResult result = await _auth.signInWithCredential(credential);
      final firebaseUser = result.user;
      print("Firebase nome: ${firebaseUser.displayName}");
      print("Firebase email: ${firebaseUser.email}");
      print("Firebase foto: ${firebaseUser.photoUrl}");
      return ApiResponse.ok(result: firebaseUser);
    } catch (e) {
      return ApiResponse.error(result: e);
    }
  }


  //dispose will be called automatically
  @override
  void dispose() {}
}
