import 'package:flutter/material.dart';
import 'package:composta_app/bloc/bloc-prov.dart';
import 'package:composta_app/screens/forms/view6/components/body.dart';
import 'package:composta_app/bloc/example-bloc.dart';
import 'package:composta_app/tools/appbar.dart';
import 'package:composta_app/tools/menu.dart';


class ViewForm6 extends StatefulWidget {
  @override
  _ViewForm6State createState() => _ViewForm6State();
}

class _ViewForm6State extends State<ViewForm6> {
  ExampleBloc example2Bloc;

  @override
  void initState() {
    super.initState();

    example2Bloc = ExampleBloc();
      Future.delayed(const Duration(milliseconds: 3000), () {
  setState(() {
    Navigator.pushReplacementNamed(context, '/Home');
  });
  });
  }
  

  @override
  void dispose() {
    example2Bloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: ExampleBloc(),
      child: Scaffold(
        appBar: appBarbuild(context),
        floatingActionButton: boomMenuBuild(context,12),
        body: Body(),
      ),
    );
  }
}

