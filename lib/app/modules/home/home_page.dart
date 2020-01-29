import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
    final listBooks = Observer(builder: (_) {
      if (homeController.listBooks != null) {
        return Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.2),
            ),
            itemCount: homeController.listBooks.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (_, index) {
              return CardBookWidget(
                  book: homeController.listBooks[index]);
            },
          ),
        );
      }
      return CircularProgressIndicator();
    });

    return Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                listBooks,
                SizedBox(height: 20),
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
                unselectedItemColor: Colors.grey,
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
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_pin),
                    title: Padding(padding: EdgeInsets.all(0.0)),
                  ),
                ]);
          },
        ));
  }
}
