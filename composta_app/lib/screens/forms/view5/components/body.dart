import 'package:flutter/material.dart';

class Residuo {
  String residuo;
  String n;
  String c;
  String h20;
  Residuo(String s, String t, String u, String v){
    this.residuo=s;
    this.n=t;
    this.c=u;
    this.h20=v;
  }

}

class Body extends StatelessWidget {

  List<Residuo> fields = [new Residuo("Resiudos","N","C","H2O"),new Residuo("Frutas","15","8","9"),new Residuo("Frutas","15","8","9"),new Residuo("Frutas","15","8","9")];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: const EdgeInsets.all(5),
        children: getFields(fields,context),
      ),
    );
  }
 
List<Widget> getFields(fields,BuildContext context) {
    List<Widget> widget = List();
    widget.add(Text("¿Qué residuos genera",style: TextStyle(fontSize: 20),textAlign: TextAlign.center));
    for (Residuo f in fields) {
      widget.add(field(f));
    }
     widget.add(
    Container(
          margin: const EdgeInsets.fromLTRB(100.0, 10.0, 90.0, 20.0),
          child: new RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.transparent),
            ),
            child: const Text('Finalizar', style: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.pushNamed(context, '/NewCompost6');
            },
          )));
    return widget;
  }

  Widget field(Residuo text) => Container(
      child:Center(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Table(
                border: TableBorder.all(),
                children: [
                  TableRow( children: [
                    Column(children:[
                      Container(
                      color: Colors.green,
                      child: Text(text.residuo, style: TextStyle(fontSize: 20)))
                    ]),
                    Column(children:[
                      Text(text.n, style: TextStyle(fontSize: 20))
                    ]),
                    Column(children:[
                      Text(text.c , style: TextStyle(fontSize: 20))
                    ]),
                     Column(children:[
                       Text(text.h20 , style: TextStyle(fontSize: 20))
                    ]),
                  ]),
                ],
              ),
            ),
          ]))
    );
}
