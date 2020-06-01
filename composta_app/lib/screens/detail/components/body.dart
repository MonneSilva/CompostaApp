import 'package:flutter/material.dart';
import 'package:composta_app/compostSummary.dart';
import 'package:composta_app/dataModel/compost.dart';
import '../../../separator.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Compost aux = ModalRoute.of(context).settings.arguments;
    return Container(
        constraints: new BoxConstraints.expand(),
        color: new Color(0xFF736AB7),
        child: new Stack (
          children: <Widget>[
            _getBackground(aux),
            _getGradient(),
            _getContent(aux),
          ],
        ),
    );
  }

  Container _getBackground (Compost aux) {
    return new Container(
            child: new Image.network(aux.image,
              fit: BoxFit.cover,
              height: 300.0,
            ),
            constraints: new BoxConstraints.expand(height: 295.0),
          );
  }

  Container _getGradient() {
    return new Container(
            margin: new EdgeInsets.only(top: 190.0),
            height: 110.0,
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: <Color>[
                  new Color(0x00736AB7),
                  new Color(0xFF736AB7)
                ],
                stops: [0.0, 0.9],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 1.0),
              ),
            ),
          );
  }

  Container _getContent(Compost aux) {
    final _overviewTitle = "Overview".toUpperCase();
    return new Container(
            child: new ListView(
              padding: new EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
              children: <Widget>[
                new CompostSummary(compost:aux),
                new Container(
                  padding: new EdgeInsets.symmetric(horizontal: 32.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(_overviewTitle),
                      new Separator(),
                      new Text(
                         aux.image),
                    ],
                  ),
                ),
              ],
            ),
          );
  }

}