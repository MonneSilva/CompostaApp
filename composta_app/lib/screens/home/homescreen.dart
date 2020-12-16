import 'dart:async';
import 'dart:convert';

import 'package:composta_app/dataModel/composta/compost_dao.dart';
import 'package:composta_app/src/boom_menu.dart';
import 'package:composta_app/src/boom_menu_item.dart';
import 'package:composta_app/tools/appbar.dart';
import 'package:flutter/material.dart';
import 'package:composta_app/dataModel/composta/compost.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CompostDao c = CompostDao();
  Future _compostas;

  @override
  void initState() {
    super.initState();
    _compostas = c.getAll();
  }

  @override
  void setState(fn) {
    super.setState(fn);
    _compostas = c.getAll();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarbuild(context),
        floatingActionButton: BoomMenu(
            animatedIcon: AnimatedIcons.menu_close,
            animatedIconTheme: IconThemeData(size: 22.0),
            overlayColor: Colors.black,
            overlayOpacity: 0.5,
            children: [
              MenuItem(
                  title: "Acerca de COMPI",
                  titleColor: Colors.white,
                  backgroundColor: Colors.lightGreen,
                  onTap: () {
                    Navigator.of(context).pushNamed("/About");
                  }),
              MenuItem(
                  title: "Guía",
                  titleColor: Colors.white,
                  backgroundColor: Colors.blueAccent,
                  onTap: () {
                    Navigator.of(context).pushNamed("/Welcome");
                  }),
              MenuItem(
                  title: "Recomendaciones",
                  titleColor: Colors.white,
                  backgroundColor: Colors.orange,
                  onTap: () {
                    Navigator.of(context).pushNamed("/Rec");
                  }),
            ]
            //getMenu(context, id),
            ),
        body: Container(
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/NewCompost');
                      },
                      child: Stack(children: <Widget>[
                        Container(
                            child: Container(
                              margin:
                                  EdgeInsets.fromLTRB(80.0, 8.0, 16.0, 16.0),
                              constraints: BoxConstraints.expand(),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('Nueva Composta',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 28,
                                          color: Colors.white)),
                                ],
                              ),
                            ),
                            height: 130.0,
                            margin: EdgeInsets.only(
                                left: 60.0, bottom: 20.0, top: 20.0),
                            decoration: BoxDecoration(
                              color: Colors.cyan[600],
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10.0,
                                  offset: Offset(0.0, 10.0),
                                ),
                              ],
                            )),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 35.0, horizontal: 15),
                          alignment: FractionalOffset.centerLeft,
                          child: Image(
                            image: AssetImage('lib/assets/img/add.png'),
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                      ])),
                  Expanded(
                    child: FutureBuilder<List<Compost>>(
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.none &&
                            snapshot.hasData == null) {
                          print("asdff ${snapshot.data}");
                          return Container(color: Colors.red);
                        }

                        return ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              Compost compost = snapshot.data[index];
                              return snapshot.data.length == null
                                  ? CircularProgressIndicator()
                                  : GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(
                                            '/CompostDetail',
                                            arguments: compost);
                                      },
                                      child: Stack(children: <Widget>[
                                        Container(
                                            child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  80.0, 8.0, 16.0, 16.0),
                                              constraints:
                                                  BoxConstraints.expand(),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(height: 4.0),
                                                  Text(
                                                      compost.data['nombre'] ??
                                                          '',
                                                      style: TextStyle(
                                                          fontSize: 28,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Container(height: 10.0),
                                                  Text(
                                                      compost.data['tipo'] ??
                                                          '',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color:
                                                              Colors.brown[800],
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Container(
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 8.0),
                                                      height: 2.0,
                                                      width: 18.0,
                                                      color: Color(0xff00c6ff)),
                                                  Text(
                                                      'Creada el: ' +
                                                          compost.data['fecha'],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors
                                                              .lightGreen[900]))
                                                ],
                                              ),
                                            ),
                                            height: 130.0,
                                            margin: EdgeInsets.only(
                                                left: 60.0,
                                                bottom: 20.0,
                                                top: 20.0),
                                            decoration: BoxDecoration(
                                              color: Colors.cyan[600],
                                              shape: BoxShape.rectangle,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 10.0,
                                                  offset: Offset(0.0, 10.0),
                                                ),
                                              ],
                                            )),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 15.0),
                                          alignment:
                                              FractionalOffset.centerLeft,
                                          child: Image(
                                            image: AssetImage(
                                                compost.data['icon']),
                                            height: 130.0,
                                            width: 130.0,
                                          ),
                                        ),
                                      ]));
                            });
                      },
                      future: _compostas,
                    ),
                  ),
                ]))));
  }
}
