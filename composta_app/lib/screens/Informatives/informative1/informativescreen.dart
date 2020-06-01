import 'package:flutter/material.dart';
import 'package:composta_app/bloc/bloc-prov.dart';
import 'package:composta_app/bloc/example-bloc.dart';
import 'package:composta_app/screens/Informatives/informative1/components/body.dart';


class ExScreen2 extends StatefulWidget {
  @override
  _ExScreen2State createState() => _ExScreen2State();
}

class _ExScreen2State extends State<ExScreen2> {
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
        appBar: AppBar(
          title: Text("Second Screen"),
        ),
        body: Body(),
      ),
    );
  }
}
