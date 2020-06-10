import 'package:composta_app/screens/stadistics/components/body.dart';
import 'package:flutter/material.dart';
import 'package:composta_app/bloc/bloc-prov.dart';

import 'package:composta_app/bloc/example-bloc.dart';
import 'package:composta_app/tools/appbar.dart';
import 'package:composta_app/tools/menu.dart';


class Stadistics extends StatefulWidget {
  @override
  _StadisticsState createState() => _StadisticsState();
}

class _StadisticsState extends State<Stadistics> {
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
        body: Body(),
      ),
    );
  }
}

