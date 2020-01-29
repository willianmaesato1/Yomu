import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yomu_app/app/modules/login/components/sign_in/sign_in_controller.dart';
import 'package:yomu_app/app/modules/login/login_module.dart';
import 'package:yomu_app/app/widgets/custom_dialog/custom_dialog_widget.dart';

class SignInWidget extends StatefulWidget {
  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  final _formKeySignIn = GlobalKey<FormState>();

  final _fieldEmailSignIn = TextEditingController();
  final _fieldPasswordSignIn = TextEditingController();

  final _fieldFocusEmailSignIn = FocusNode();
  final _fieldFocusPasswordSignIn = FocusNode();

  SignInController _signInController = LoginModule.to.get<SignInController>();

  @override
  Widget build(BuildContext context) {
    final sizeHeigth = MediaQuery.of(context).size.height;
    final textFieldEmail = TextField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      controller: _fieldEmailSignIn,
      focusNode: _fieldFocusEmailSignIn,
      onChanged: (value) => _signInController.setEmailSignIn(value),
      onEditingComplete: () => _fieldFocusPasswordSignIn.requestFocus(),
      decoration:
          InputDecoration(hintText: 'Email Addess', icon: Icon(Icons.email)),
    );
    final textFieldPassword = TextField(
        obscureText: true,
        focusNode: _fieldFocusPasswordSignIn,
        onChanged: (value) => _signInController.setPasswordSignIn(value),
        onEditingComplete: () =>
            _signInController.setPasswordSignIn(_fieldPasswordSignIn.text),
        decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(Icons.lock),
          suffixIcon: GestureDetector(
            child: Text(
              'Forgot?',
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () async {
              await CustomDialogWidget(icon: Icons.email, context: context)
                  .dialogContent();
            },
          ),
        ),
        onSubmitted: (term) =>
            _formKeySignIn.currentState.validate() ??
            _signInController.loginWithEmail());
    final buttomSignIn = GestureDetector(
        child: Observer(
          builder: (_) => Container(
            width: 50,
            height: 50,
            padding: EdgeInsets.all(14.0),
            margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.7),
                borderRadius: BorderRadius.circular(50.0)),
            child: Center(
              child: _signInController.progressSignIn
                  ? CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white))
                  : Center(
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
        ),
        onTap: () => _formKeySignIn.currentState.validate()
            ? _signInController.signInWithEmail()
            : null);
    final signInForm = Expanded(
      flex: 3,
      child: Form(
        key: _formKeySignIn,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              textFieldEmail,
              SizedBox(height: 32),
              textFieldPassword,
            ],
          ),
        ),
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
          signInForm,
          const Spacer(),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () async => await _signInController.signInWithFacebook(),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.facebook,
                            size: 45,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _signInController.signInWithGoogle(),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.googlePlus,
                            size: 45,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _signInController.signInWithTwitter(),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.twitter,
                            size: 45,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                      )
                    ],
                  ),
                  buttomSignIn,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
