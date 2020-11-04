import 'package:flutter/material.dart';
import 'package:composta_app/screens/forms/view2/components/body.dart';
import 'package:composta_app/tools/appbar.dart';
import 'package:composta_app/tools/menu.dart';

class ViewForm2 extends StatefulWidget {
  @override
  _ViewForm2State createState() => _ViewForm2State();
}

class _ViewForm2State extends State<ViewForm2> {
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
      floatingActionButton: boomMenuBuild(context, 12),
      body: Body(),
    );
  }
}
