import 'package:composta_app/src/boom_menu.dart';
import 'package:composta_app/src/boom_menu_item.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:composta_app/tools/appbar.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
    int _value = 1;
    /* int _currentIndex = 0;
    List cardList = [
      buildItem(
          context,
          "1",
          "Se rewuiere una malla metálica 1m * 3m.",
          Animation(
              file: "lib/assets/img/Control_Composta.flr",
              animation: "Control_Corriendo")),
      buildItem(
          context,
          "2",
          "Se requiere 3 o 4 postes de madera o de metal de poco más de 1m, preferentemente",
          Animation(
              file: "lib/assets/img/Control_Composta.flr",
              animation: "Control_Corriendo")),
      buildItem(
          context,
          "3",
          "Se requiere alambres de sujeción.",
          Animation(
              file: "lib/assets/img/Control_Composta.flr",
              animation: "Control_Corriendo")),
      buildItem(
          context,
          "4",
          "Unir la malla de alambre a los postes, con el alambre de sujeción o con clavos, formando un cilindro o un cubo.",
          Animation(
              file: "lib/assets/img/Control_Composta.flr",
              animation: "Control_Corriendo")),
      buildItem(
          context,
          "5",
          "Colocar el cilindro en el jardín, colocando una capa de materia café (vegetación seca) seguida de una capa de materia húmeda (vegetación verde y residuos orgánicos), llenar el cilindro intercalando capas.",
          Animation(
              file: "lib/assets/img/Control_Composta.flr",
              animation: "Control_Corriendo")),
    ];*/
    return Scaffold(
        appBar: appBarbuild(context),
        floatingActionButton: BoomMenu(
            animatedIcon: AnimatedIcons.menu_close,
            animatedIconTheme: IconThemeData(size: 22.0),
            overlayColor: Colors.black,
            overlayOpacity: 0.7,
            children: [
              MenuItem(
                  title: "¿Cómo medir?",
                  titleColor: Colors.white,
                  backgroundColor: Colors.lightGreen,
                  onTap: () {
                    Navigator.of(context).pushNamed("/MeasuresGuide");
                  }),
              MenuItem(
                  title: "Estadísticas",
                  titleColor: Colors.white,
                  backgroundColor: Colors.blueAccent,
                  onTap: () {
                    // Navigator.of(context).pushNamed("/About");
                  }),
              MenuItem(
                  title: "Eliminar",
                  titleColor: Colors.white,
                  backgroundColor: Colors.redAccent,
                  onTap: () {
                    Navigator.of(context).pop();
                  }),
            ]
            //getMenu(context, id),
            ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
              new Container(
                  height: 180,
                  child: FlareActor("lib/assets/img/Control_Composta.flr",
                      animation: "Control_Corriendo")),
              new Text("Control de hoy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              new Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[Text("Temperatura")]),
                    TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        hintText: "10.00",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0)),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[Text("pH")]),
                    TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0)),
                          hintText: "10.00"),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Humedad"),
                          IconButton(
                            icon: Icon(Icons.info),
                            onPressed: () {},
                          ),
                        ]),
                    DropdownButtonFormField(
                        value: _value,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0)),
                        ),
                        items: [
                          DropdownMenuItem(child: Text("Húmeda"), value: 1),
                          DropdownMenuItem(child: Text("Adecuada"), value: 2),
                          DropdownMenuItem(child: Text("Seca"), value: 3)
                        ],
                        onChanged: (value) {
                          _value = value;
                        })
                    //  actionsButtonsBuild(context, "Cancelar", "Registrar", "pop", "pop")
                    //getField(section),
                  ],
                ),
              )
            ])));
  }
}

Widget buildItem(BuildContext context, String number, String instruction,
    Animation animation) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(number,
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
        Container(
            height: 180,
            child: FlareActor(animation.file, animation: animation.animation)),
        Flexible(
            child: Text(instruction,
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.black, fontSize: 17.0))),
      ],
    ),
  );
}

class Animation {
  String file;
  String animation;
  Animation({this.file, this.animation});
}
