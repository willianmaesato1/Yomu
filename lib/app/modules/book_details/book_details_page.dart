import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatefulWidget {
  final String title;
  final DocumentSnapshot book;

  const BookDetailsPage(
      {Key key, this.title = "BookDetails", @required this.book})
      : super(key: key);

  @override
  _BookDetailsPageState createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.network("${widget.book.data['image']}",
                  fit: BoxFit.fitWidth)),
          DraggableScrollableSheet(
              builder: (_, ScrollController scrollController) {
            return Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                  child: ListView.builder(
                      itemCount: 10,
                      controller: scrollController,
                      itemBuilder: (_, index) {
                        return ListTile(
                          title: Text("Mozão"),
                          subtitle: Text("Amo muito mais S2"),
                          trailing: Icon(Icons.favorite, color: Colors.red),
                          isThreeLine: true,
                        );
                      }),
                ),
                Positioned(
                  top: -30,
                  right: 30,
                  child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.comment, color: Colors.white)),
                )
              ],
            );
          })
        ],
      ),
    );
  }
}
