import 'package:flutter/material.dart';

Widget appBarbuild(BuildContext context) {
  return AppBar(
    title: 
      Image.asset('lib/assets/img/logo.png', fit: BoxFit.cover, height: 50),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    centerTitle: true,
    iconTheme: IconThemeData(
            color: Colors.black, 
          ),
  );
}
