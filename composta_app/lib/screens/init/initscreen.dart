import 'package:composta_app/bloc/bloc-prov.dart';
import 'package:composta_app/bloc/example-bloc.dart';
import 'package:composta_app/screens/init/components/body.dart';
import 'package:composta_app/tools/appbar.dart';
import 'package:flutter/material.dart';



class InitScreen extends StatefulWidget {
  @override
  _InitScreenState createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  ExampleBloc exampleBloc;

  @override
  void initState() {
    super.initState();

    exampleBloc = ExampleBloc();
    
  Future.delayed(const Duration(milliseconds: 10000), () {
  setState(() {
    Navigator.pushReplacementNamed(context, '/Welcome');
  });
  });

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
        body: Body(),
      ),
    );
  }
}




