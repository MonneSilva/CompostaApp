import 'package:flutter/material.dart';
import 'package:composta_app/screens/forms/view5/components/body.dart';
import 'package:composta_app/tools/appbar.dart';
import 'package:composta_app/tools/menu.dart';

class ViewForm5 extends StatefulWidget {
  @override
  _ViewForm5State createState() => _ViewForm5State();
}

class _ViewForm5State extends State<ViewForm5> {
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
