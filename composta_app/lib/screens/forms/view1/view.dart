import 'package:flutter/material.dart';
import 'package:composta_app/bloc/bloc-prov.dart';
import 'package:composta_app/screens/forms/view1/components/body.dart';
import 'package:composta_app/bloc/example-bloc.dart';
import 'package:composta_app/tools/appbar.dart';
import 'package:composta_app/tools/menu.dart';


class ViewForm1 extends StatefulWidget {
  @override
  _ViewForm1State createState() => _ViewForm1State();
}

class _ViewForm1State extends State<ViewForm1> {
  ExampleBloc example2Bloc;

  @override
  void initState() {
    super.initState();

    example2Bloc = ExampleBloc();
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
        floatingActionButton: boomMenuBuild(context),
        body: Body(),
      ),
    );
  }
}

