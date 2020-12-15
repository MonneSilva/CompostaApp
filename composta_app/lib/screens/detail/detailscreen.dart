import 'package:composta_app/dataModel/composta/compost.dart';
import 'package:composta_app/dataModel/composta/compost_dao.dart';
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
  final _temp = TextEditingController();
  final _ph = TextEditingController();
  CompostDao c = new CompostDao();
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
    final Compost data = ModalRoute.of(context).settings.arguments as Compost;
    int _value = 1;
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
                    c.delete(int.parse(data.data['_id']));
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/Home', (Route<dynamic> route) => false);
                  }),
            ]
            //getMenu(context, id),
            ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
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
                    children: <Widget>[
                      Expanded(flex: 2, child: Text("Temperatura")),
                      Expanded(
                          flex: 5,
                          child: TextField(
                            controller: _temp,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                  borderRadius:
                                      new BorderRadius.circular(25.0)),
                            ),
                          )),
                      Expanded(flex: 1, child: Text(" °C")),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(flex: 2, child: Text("pH")),
                      Expanded(
                          flex: 5,
                          child: TextField(
                            controller: _ph,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              border: new OutlineInputBorder(
                                  borderRadius:
                                      new BorderRadius.circular(25.0)),
                            ),
                          )),
                      Expanded(flex: 1, child: Text(" ")),
                    ]),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                    Widget>[
                  Expanded(flex: 2, child: Text("Humedad")),
                  Expanded(
                    flex: 5,
                    child: DropdownButtonFormField(
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
                        }),
                  ),
                  Expanded(flex: 1, child: Text(" ")),
                ]),
                Container(
                  height: 20,
                ),
                //  actionsButtonsBuild(context, "Cancelar", "Registrar", "pop", "pop")
                //getField(section),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red),
                        ),
                        child: const Text('Cancelar',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      RaisedButton(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.green),
                        ),
                        child: Text('Registrar',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        onPressed: () {
                          Map m = {
                            'fecha': DateTime.now().toString().split(' ')[0],
                            'temperatura': _temp.text,
                            'ph': _ph.text,
                            'humedad': _value.toString()
                          };

                          // c.update(data);
                          Navigator.of(context).pop();
                        },
                      ),
                    ])
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
