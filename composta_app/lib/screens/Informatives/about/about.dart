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
      backgroundColor: Colors.white,
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
          Text("Proyecto desarrollado en ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Container(
                margin: new EdgeInsets.symmetric(vertical: 15.0),
                alignment: FractionalOffset.centerLeft,
                child: new Image(
                  image: new AssetImage('lib/assets/img/labsol.png'),
                  height: 130.0,
                  width: 130.0,
                )),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 15.0),
              alignment: FractionalOffset.centerLeft,
              child: new Image(
                image: new AssetImage('lib/assets/img/unnamed.png'),
                height: 130.0,
                width: 130.0,
              ),
            ),
          ]),
          Text("Equipo desarrollador",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Text(
              "José Ronaldo Díaz Paredes \n Abigail García Vanegas \n Karla Gabriela Isiordia Bautista \n Alejandro Hinojoza Pérez \n Cesar Ivan Martinez Martinez \n Montserrat Silva Cordero",
              style: TextStyle(fontSize: 15)),
          Container(
            margin: new EdgeInsets.all(15),
            alignment: Alignment.center,
            child: new Image(
              image: new AssetImage('lib/assets/img/ipn.png'),
              height: 130.0,
              width: 130.0,
            ),
          ),
        ],
      )),
    );
  }
}
