import 'package:flutter/material.dart';
import 'package:composta_app/screens/forms/view7/components/body.dart';
import 'package:composta_app/tools/appbar.dart';

class ViewForm7 extends StatefulWidget {
  @override
  _ViewForm7State createState() => _ViewForm7State();
}

class _ViewForm7State extends State<ViewForm7> {
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
