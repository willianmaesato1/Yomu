import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:yomu_app/app/modules/login/components/sign_in/sign_in_controller.dart';
import 'package:yomu_app/app/modules/login/login_controller.dart';
import 'package:yomu_app/app/modules/login/login_module.dart';

import 'components/sign_in/sign_in_widget.dart';
import 'components/sign_up/sign_up_widget.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {

  LoginController loginController = LoginModule.to.get();
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      loginController.pageCurrent(_tabController.index);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sizeHeigth = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;

    final selectTopField = Container(
      height: sizeHeigth / 2.5,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
        image: DecorationImage(
            image: AssetImage('assets/images/background.jpeg'),
            fit: BoxFit.cover),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            child: Observer(
                builder: (_) => Icon(
                      loginController.currentIndex == 0
                          ? Icons.person
                          : Icons.group_add,
                      color: Colors.white,
                    )),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.transparent),
          ),
          SizedBox(
            height: 40,
            width: 200,
            child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: <Widget>[
                  Text('Sign in'.toUpperCase()),
                  Text('Sign up'.toUpperCase()),
                ]),
          )
        ],
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            selectTopField,
            Container(
              height: sizeHeigth - (sizeHeigth / 2.4),
              width: sizeWidth,
              child: TabBarView(
                controller: _tabController,
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  SignInWidget(),
                  SignUpWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}