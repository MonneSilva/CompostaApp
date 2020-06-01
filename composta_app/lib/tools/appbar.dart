import 'package:flutter/material.dart';

Widget appBarbuild(BuildContext context) {
  return AppBar( 
      title: Image.asset('lib/assets/img/logo.png', fit: BoxFit.cover,height: 150),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    /*leading: IconButton(
      icon: Icon(Icons.desktop_mac, color: Colors.black),
      onPressed: () => Navigator.of(context).pop(),
    ),*/
  );
}
