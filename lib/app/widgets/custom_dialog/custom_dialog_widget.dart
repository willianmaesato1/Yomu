import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yomu_app/utils/constants.dart';

class CustomDialogWidget {
  final IconData icon;
  final BuildContext context;

  CustomDialogWidget({@required this.icon, @required this.context});

  dialogContent() {
    final circleAvatar = Positioned(
      left: Constants.padding,
      right: Constants.padding,
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: Constants.avatarRadius,
        child: Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
      ),
    );
    return showDialog(
        context: context,
        builder: (_) => Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Constants.padding),
              ),
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              child: SingleChildScrollView(
                child: Stack(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(
                          top: Constants.avatarRadius + Constants.padding,
                          bottom: Constants.padding,
                          left: Constants.padding,
                          right: Constants.padding,
                        ),
                        margin: EdgeInsets.only(top: Constants.avatarRadius),
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(Constants.padding),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10.0,
                              offset: const Offset(0.0, 10.0),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          // To make the card compact
                          children: <Widget>[
                            Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Please enter your registered email address we will get back to you with the reset password link and confirmation',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            TextFormField(
                              autofocus: true,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  hintText: 'Enter email',
                                  contentPadding: EdgeInsets.all(0.0),
                                  icon: Icon(
                                    Icons.email,
                                  )),
                            ),
                            SizedBox(height: 24.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: FlatButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Cancel'))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: FlatButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Submit'))),
                              ],
                            )
                          ],
                        )),
                    circleAvatar
                  ],
                ),
              ),
            ));
  }

  dialogErrorLogin({String title, String description}) {
    return showDialog(
        context: context,
        builder: (_) => Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Constants.padding),
              ),
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              child: SingleChildScrollView(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        top: Constants.avatarRadius + Constants.padding,
                        bottom: Constants.padding,
                        left: Constants.padding,
                        right: Constants.padding,
                      ),
                      margin: EdgeInsets.only(top: Constants.avatarRadius),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(Constants.padding),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10.0,
                            offset: const Offset(0.0, 10.0),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Ok'),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: Constants.padding,
                      right: Constants.padding,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: Constants.avatarRadius,
                        child: Icon(
                          icon,
                          size: 80,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
