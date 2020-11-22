import 'package:flutter/material.dart';
import 'package:composta_app/screens/forms/view4/components/body.dart';
import 'package:composta_app/tools/appbar.dart';

class ViewForm4 extends StatefulWidget {
  @override
  _ViewForm4State createState() => _ViewForm4State();
}

class _ViewForm4State extends State<ViewForm4> {
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
      body: Body(),
    );
  }
}
