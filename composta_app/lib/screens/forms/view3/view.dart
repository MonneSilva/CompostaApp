import 'package:flutter/material.dart';
import 'package:composta_app/screens/forms/view3/components/body.dart';
import 'package:composta_app/tools/appbar.dart';

class ViewForm3 extends StatefulWidget {
  @override
  _ViewForm3State createState() => _ViewForm3State();
}

class _ViewForm3State extends State<ViewForm3> {
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
