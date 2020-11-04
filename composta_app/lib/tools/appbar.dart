import 'package:flutter/material.dart';

Widget appBarbuild(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('lib/assets/img/logo.png', fit: BoxFit.cover, height: 50),
      ],
    )),
    iconTheme: IconThemeData(
      color: Colors.black, //change your color here
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}
