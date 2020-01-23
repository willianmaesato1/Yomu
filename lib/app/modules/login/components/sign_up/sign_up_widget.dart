import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:yomu_app/app/modules/login/components/sign_up/sign_up_controller.dart';
import 'package:yomu_app/app/modules/login/login_module.dart';

class SignUpWidget extends StatefulWidget {
  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final _formKeySignUp = GlobalKey<FormState>();

  final _fieldNameSignUp = TextEditingController();
  final _fieldEmailSignUp = TextEditingController();
  final _fieldPasswordSignUp = TextEditingController();

  final _fieldFocusEmailSignUp = FocusNode();
  final _fieldFocusPasswordSignUp = FocusNode();

  SignUpController _signUpController = LoginModule.to.get();

  @override
  Widget build(BuildContext context) {
    final sizeHeigth = MediaQuery.of(context).size.height;
    final textFieldName = TextFormField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      controller: _fieldNameSignUp,
      validator: (value) {
        if (value.isEmpty) {
          return 'Favor colocar um Nome para continuar';
        }
        return null;
      },
      decoration: InputDecoration(
          hintText: 'Nome',
          icon: Icon(
            Icons.person,
          )),
      onEditingComplete: () => _fieldFocusEmailSignUp.requestFocus(),
    );
    final textFieldEmail = Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: _fieldEmailSignUp,
        textInputAction: TextInputAction.next,
        validator: (value) {
          if (value.isEmpty) {
            return 'Favor colocar um Email para continuar';
          }
          return null;
        },
        decoration:
            InputDecoration(hintText: 'Email Addess', icon: Icon(Icons.email)),
        focusNode: _fieldFocusEmailSignUp,
        onEditingComplete: () => _fieldFocusPasswordSignUp.requestFocus(),
      ),
    );
    final textFieldPAssword = TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      obscureText: true,
      focusNode: _fieldFocusPasswordSignUp,
      controller: _fieldPasswordSignUp,
      validator: (value) {
        if (value.isEmpty) {
          return 'Favor colocar uma Senha para continuar';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Senha',
        icon: Icon(Icons.lock),
      ),
    );
    return Container(
      width: 200,
      height: sizeHeigth - (sizeHeigth / 2.4),
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Spacer(),
          Expanded(
            flex: 4,
            child: Form(
              key: _formKeySignUp,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    textFieldName,
                    textFieldEmail,
                    textFieldPAssword,
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: authTypes.map((authType) {
                      return SocialButton(
                        authType: authType,
                        onPressed: () {
                          switch (authType) {
                            case AuthType.facebook:
                              loginController.loginFacebook(context);
                              break;
                            case AuthType.google:
                              loginController.loginGoogle(context);
                              break;
                            case AuthType.twitter:
                              loginController.loginTwitter(context);
                              break;
                          }
                        },
                      );
                    }).toList(),
                  ),*/
                  GestureDetector(
                      child: Observer(
                        builder: (_) => Container(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.all(14.0),
                          margin: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 6.0),
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(50.0)),
                          child: Center(
                            child: _signUpController.progressSignUp
                                ? CircularProgressIndicator(
                                    valueColor:
                                        AlwaysStoppedAnimation(Colors.white))
                                : Center(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      onTap: () =>
                          _formKeySignUp.currentState.validate() ??
                          _signUpController.signUpWithEmail()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
