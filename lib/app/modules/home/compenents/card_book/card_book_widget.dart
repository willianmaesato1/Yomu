import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CardBookWidget extends StatelessWidget {
  final DocumentSnapshot book;

  const CardBookWidget({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Modular.to.pushNamed("/Book_details", arguments: book),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Stack(
              children: <Widget>[
                Center(child: CircularProgressIndicator()),
                FadeInImage.assetNetwork(
                  placeholder: 'assets/images/transparent_image.png',
                  image: book['image'],
                  height: 220,
                  width: 160,
                  fit: BoxFit.cover,
                  fadeOutDuration: Duration(milliseconds: 300),
                  fadeOutCurve: Curves.decelerate,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
