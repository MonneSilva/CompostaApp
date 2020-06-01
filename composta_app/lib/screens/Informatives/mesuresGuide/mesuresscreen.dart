import 'package:flutter/material.dart';
import 'package:composta_app/bloc/bloc-prov.dart';
import 'package:composta_app/screens/Informatives/mesuresGuide/components/body.dart';
import 'package:composta_app/bloc/example-bloc.dart';
import 'package:composta_app/tools/appbar.dart';


class MeasuresScreen extends StatefulWidget {
  @override
  _MeasuresScreenState createState() => _MeasuresScreenState();
}

class _MeasuresScreenState extends State<MeasuresScreen> {
  ExampleBloc exampleBloc;

  @override
  void initState() {
    super.initState();

    exampleBloc = ExampleBloc();
  }

  @override
  void dispose() {
    exampleBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: exampleBloc,
      child: Scaffold(
        appBar:  appBarbuild(context),
        body: Body(),
      ),
    );
  }
}




