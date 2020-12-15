import 'dart:convert';

import 'package:composta_app/dataModel/composta/compost.dart';
import 'package:flutter/material.dart';
import 'package:composta_app/tools/appbar.dart';
import 'package:flutter/services.dart';

class ViewForm1 extends StatefulWidget {
  @override
  _ViewForm1State createState() => _ViewForm1State();
}

class _ViewForm1State extends State<ViewForm1> {
  int _opc;
  Compost composta;
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _opc = 1;
    composta = new Compost(
        id: null,
        data: Map.castFrom(
            json.decode('{"nombre":"","fecha":"","tipo":"","icon":""}')));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    buildImageButton(String image, String text, int opc) {
      final boxContent = Container(
        margin: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage(image),
              height: 180.0,
              width: 180.0,
            ),
            Container(height: 10.0),
            Text(
              text,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );

      getBox() {
        return Container(
            child: boxContent,
            height: 290.0,
            width: 290.0,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: (_opc == opc) ? Colors.orange : Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                ),
              ],
            ));
      }

      return GestureDetector(
          onTap: () {
            setState(() {
              _opc = opc;
            });
            /*
            if (_color == Colors.orange)
              _color = Colors.green;
            else
              _color = Colors.orange;*/
          },
          child: Stack(children: <Widget>[
            getBox(),
          ]));
    }

    return Scaffold(
        appBar: appBarbuild(context),
        body: SizedBox.expand(
            child: Center(
          child: ListView(
              //mainAxisAlignment: MainAxisAlignment.start,
              //  crossAxisAlignment: CrossAxisAlignment.center,
              padding: const EdgeInsets.all(5),
              children: [
                Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 2,
                          child:
                              Text("Nombre:", style: TextStyle(fontSize: 20))),
                      Expanded(
                          flex: 5,
                          child: TextFormField(
                              controller: myController,
                              decoration:
                                  InputDecoration(hintText: 'Mi compi')))
                    ],
                  ),
                  Text("¿Dónde desea compostar?",
                      style: TextStyle(fontSize: 28)),
                  buildImageButton("lib/assets/img/contenedor.png",
                      "CAJAS O CONTENEDORES", 1),
                  buildImageButton("lib/assets/img/jardin.png", "JARDÍN", 2),
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
                          child: Text('Siguiente',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          onPressed: () {
                            composta.data['nombre'] = myController.text;
                            composta.data['fecha'] =
                                DateTime.now().toString().split(' ')[0];

                            if (_opc == 1) {
                              composta.data['tipo'] = 'Cajas';
                              composta.data['icon'] =
                                  'lib/assets/img/contenedor.png';
                              Navigator.pushNamed(context, '/NewCompost3',
                                  arguments: composta);
                            } else {
                              // if (_opc==2)
                              composta.data['tipo'] = 'Jardin';
                              composta.data['icon'] =
                                  'lib/assets/img/jardin.png';
                              Navigator.pushNamed(context, '/NewCompost2',
                                  arguments: composta);
                            }
                          },
                        ),
                      ]),
                ])
              ]
              //  getWidgets(context),
              ),
        )));
  }
}
