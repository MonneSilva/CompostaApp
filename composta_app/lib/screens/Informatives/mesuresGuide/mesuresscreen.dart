//import 'package:composta_app/src/boom_menu.dart';
//import 'package:composta_app/src/boom_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:composta_app/screens/Informatives/mesuresGuide/components/body.dart';
import 'package:composta_app/tools/appbar.dart';

class MeasuresScreen extends StatefulWidget {
  @override
  _MeasuresScreenState createState() => _MeasuresScreenState();
}

class _MeasuresScreenState extends State<MeasuresScreen> {
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
