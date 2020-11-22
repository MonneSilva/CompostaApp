import 'package:composta_app/tools/appbar.dart';
import 'package:flutter/material.dart';

class InitScreen extends StatefulWidget {
  @override
  _InitScreenState createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarbuild(context),
        body: Container(
          height: 150.0,
          margin: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 50.0),
          child: Image.asset(
            "lib/assets/img/logo-name.png",
          ),
        ));
  }
}
