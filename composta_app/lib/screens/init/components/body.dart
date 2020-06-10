
import 'package:flutter/material.dart';






class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();

}

class _BodyState extends State<Body> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 250.0,
            margin: const EdgeInsets.fromLTRB(80.0, 250.0, 20.0, 50.0),
            child: Image.asset("lib/assets/img/logo-name.png",
            width: 250,
            height: 250,
            ),
          );
}
}


