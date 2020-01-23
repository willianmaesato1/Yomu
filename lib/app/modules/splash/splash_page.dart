import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:yomu_app/app/modules/splash/splash_controller.dart';
import 'package:yomu_app/app/modules/splash/splash_module.dart';
import 'package:yomu_app/utils/styles.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  SplashController splashController = SplashModule.to.get();

  @override
  void initState() {
    super.initState();
    splashController.verificaLogin(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/background.jpeg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(1),
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.025),
                    ]),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                FlutterI18n.translate(context, 'app.welcome_page.title'),
                textScaleFactor: 1,
                style: StyleText.WELCOME_TITLE,
              ),
              SizedBox(height: 10),
              Text(
                FlutterI18n.translate(context, 'app.welcome_page.subtitle'),
                textAlign: TextAlign.center,
                style: StyleText.WELCOME_SUBTITLE,
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.brown,
                        size: 18,
                      ),
                    ),
                  ),
                  onTap: (){
                  },
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}

