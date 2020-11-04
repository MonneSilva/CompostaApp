import 'package:flutter/material.dart';
import 'package:composta_app/screens/Informatives/informative1/components/body.dart';

class ExScreen2 extends StatefulWidget {
  @override
  _ExScreen2State createState() => _ExScreen2State();
}

class _ExScreen2State extends State<ExScreen2> {
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
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Body(),
    );
  }
}
