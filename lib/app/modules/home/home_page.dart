import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobx/mobx.dart';
import 'package:yomu_app/app/model/user.dart';
import 'package:yomu_app/app/modules/home/compenents/card_book/card_book_widget.dart';
import 'package:yomu_app/app/modules/home/home_controller.dart';
import 'package:yomu_app/app/modules/home/home_module.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = HomeModule.to.get();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      homeController.searchBooks();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.person_outline,
                          size: 30,
                          color: Colors.black,
                        ),
                        onPressed: () {}),
                  ],
                ),
                SizedBox(height: 10),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Hello ${User.nome}, ',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.brown)),
                          TextSpan(
                              text: 'what are you\nlooking for?',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ])))),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    iconCategory('All', Icons.apps),
                    iconCategory('Advocacy', Icons.account_balance),
                    iconCategory('Medicine', FontAwesomeIcons.bookMedical),
                    iconCategory('All', Icons.apps),
                    iconCategory('All', Icons.apps),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('Best Experiences',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500)),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_horiz),
                      color: Colors.black,
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                Observer(builder: (_) {
                  if (homeController.listBooks != null) {
                    return Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 1.2),
                        ),
                        itemCount: homeController.listBooks.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (_, index) {
                          return CardBookWidget(
                              widget: homeController.listBooks[index]);
                        },
                      ),
                    );
                  }
                  return CircularProgressIndicator();
                }),
                SizedBox(height: 25.0),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Observer(
          builder: (_) {
            return BottomNavigationBar(
                currentIndex: homeController.navigationIndex,
                onTap: homeController.navigationPage,
                selectedItemColor: Colors.red,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Padding(padding: EdgeInsets.all(0.0)),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    title: Padding(padding: EdgeInsets.all(0.0)),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    title: Padding(padding: EdgeInsets.all(0.0)),
                  ),
                ]);
          },
        ));
  }

  iconCategory(String text, IconData iconData) {
    return Container(
      height: 80,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.brown[50],
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
                icon: Icon(iconData),
                iconSize: 30,
                color: Colors.brown[400],
                onPressed: () {}),
          ),
          Text(text, style: TextStyle(fontSize: 10))
        ],
      ),
    );
  }
}
