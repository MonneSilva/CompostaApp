import 'package:composta_app/routes.dart';
import 'theme/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      title: 'COMPI',
      initialRoute: '/Home',
      routes: routes,
    );
  }
}
