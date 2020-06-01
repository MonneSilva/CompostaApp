import 'package:flutter/material.dart';
import 'package:composta_app/bloc/bloc-prov.dart';
import 'package:composta_app/screens/forms/view5/components/body.dart';
import 'package:composta_app/bloc/example-bloc.dart';
import 'package:composta_app/tools/appbar.dart';
import 'package:composta_app/tools/menu.dart';


class ViewForm5 extends StatefulWidget {
  @override
  _ViewForm5State createState() => _ViewForm5State();
}

class _ViewForm5State extends State<ViewForm5> {
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

