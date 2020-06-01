import 'package:flutter/material.dart';
import 'theme/style.dart';
import 'routes.dart';
import 'bloc/bloc-prov-tree.dart';
import 'bloc/bloc-prov.dart';
import 'blocs/blocs.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      blocProviders: <BlocProvider>[
        BlocProvider<AuthBloc>(bloc: AuthBloc()),
        BlocProvider<PrefBloc>(bloc: PrefBloc()),
      ],
      child: MaterialApp(
        title: 'CompostaApp',
        theme: appTheme(),
        initialRoute: '/Welcome',
        routes: routes,
      ),
    );
  }
}