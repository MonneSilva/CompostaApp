import 'package:composta_app/tools/appbar.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('lib/assets/img/logo-name.png',
              fit: BoxFit.cover, height: 250),
          Text("Versión de aplicación",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Text("1.0", style: TextStyle(fontSize: 15)),
          Text("Proyecto desarrollado",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Text("LABSOL y AMOXTLE", style: TextStyle(fontSize: 15)),
          Text("Equipo desarrollador",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Text(
              "José Ronaldo Díaz Paredes \n Abigail García Vanegas \n Karla Gabriela Isiordia Bautista \n Alejandro Hinojoza Pérez \n Cesar Ivan Martinez Martinez \n Montserrat Silva Cordero",
              style: TextStyle(fontSize: 15)),
        ],
      )),
    );
  }
}
