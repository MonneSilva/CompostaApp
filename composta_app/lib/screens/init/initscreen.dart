import 'dart:async';
import 'dart:io';

import 'package:composta_app/tools/appbar.dart';
import 'package:flutter/material.dart';

class InitScreen extends StatefulWidget {
  @override
  _InitScreenState createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  @override
  initState() {
    super.initState();
    //sleep(const Duration(seconds: 1));
    //await Future.delayed(const Duration(seconds: 100), () => "1");
    Timer(Duration(seconds: 5), () {
      // 5s over, navigate to a new page
      //Navigator.pushNamed(context, MaterialPageRoute(builder: (_) => Screen2()));

      Navigator.of(context).popAndPushNamed('/Home');
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      height: 280.0,
      child: Image.asset(
        "lib/assets/img/logo-name.png",
        height: 250,
      ),
    )));
  }
}
