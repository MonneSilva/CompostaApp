import 'package:flutter/material.dart';

Widget appBarbuild(BuildContext context) {
  return AppBar(
    title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset('lib/assets/img/logo.png', fit: BoxFit.cover, height: 50),
    ]),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}
