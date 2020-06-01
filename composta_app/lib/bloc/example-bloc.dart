import 'dart:async';

import 'package:composta_app/bloc/bloc.dart';





class ExampleBloc extends Bloc {

  Stream<String> get example => _exampleSubject.stream;
  Sink<String> get exampleSink => _exampleSubject.sink;
  final StreamController<String> _exampleSubject = StreamController<String>();

  ExampleBloc();

  void dispose() {
    _exampleSubject.close();  
  }
}
