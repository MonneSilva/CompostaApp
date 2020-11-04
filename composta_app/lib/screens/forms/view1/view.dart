import 'package:flutter/material.dart';
//import 'package:composta_app/screens/forms/view1/components/body.dart';

import 'package:composta_app/tools/appbar.dart';
import 'package:composta_app/tools/menu.dart';

class ViewForm1 extends StatefulWidget {
  @override
  _ViewForm1State createState() => _ViewForm1State();
}

class _ViewForm1State extends State<ViewForm1> {
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
    int _opc;

    buildImageButton(String image, String text, int opc) {
      final boxContent = new Container(
        margin: new EdgeInsets.all(20),
        constraints: new BoxConstraints.expand(),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Image(
              image: new AssetImage(image),
              height: 120.0,
              width: 120.0,
            ),
            new Container(height: 2.0),
            Text(
              text,
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );

      getBox(Color color) {
        return new Container(
            child: boxContent,
            height: 200.0,
            width: 200.0,
            margin: new EdgeInsets.all(10),
            decoration: new BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              boxShadow: <BoxShadow>[
                new BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: new Offset(0.0, 10.0),
                ),
              ],
            ));
      }

      Color _color = Colors.orange;
      return GestureDetector(
          onTap: () {
            setState(() {
              _opc = opc;
            });
            print(_opc);
            //option = opc;
          },
          child: new Stack(children: <Widget>[
            getBox(_color),
          ]));
    }

    getOpc() {
      return _opc;
    }

    return Scaffold(
        appBar: appBarbuild(context),
        floatingActionButton: boomMenuBuild(context, 12),
        body: Center(
          child: ListView(
              //mainAxisAlignment: MainAxisAlignment.start,
              //  crossAxisAlignment: CrossAxisAlignment.center,
              padding: const EdgeInsets.all(5),
              children: [
                Column(children: [
                  Text("¿Dónde desea compostar?",
                      style: TextStyle(fontSize: 28)),
                  buildImageButton(
                      "lib/assets/img/jardin.png", "CAJAS O CONTENEDORES", 1),
                  buildImageButton("lib/assets/img/jardin.png", "JARDÍN", 2),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.transparent),
                          ),
                          child: const Text('Cancelar',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.transparent),
                          ),
                          child: const Text('Siguiente',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            int opc = getOpc();
                            print(opc);
                            if (_opc == 1)
                              Navigator.pushNamed(context, '/NewCompost2');
                            else // if (_opc==2)
                              Navigator.pushNamed(context, '/NewCompost3');
                          },
                        ),
                      ]),
                ])
              ]
              //  getWidgets(context),
              ),
        ));
  }
}
