import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  List<String> fields = ["Fruta", "Verdura"];
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
    widget.add(Text("¿Qué residuos genera"));
    widget.add(Text("Seleccione las opciones correspondientes:"));
    for (String f in fields) {
      widget.add(field(f));
    }
     widget.add(
    RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.transparent),
            ),
            child: const Text('Siguiente', style: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.pushNamed(context, '/NewCompost5');
            },
          ));
    return widget;
  }

  Widget field(text) => Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(left: 20),
            child: Text(text, style: TextStyle(fontSize: 25)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.green, spreadRadius: 3),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 0, right: 20),
            padding: EdgeInsets.only(left: 10),
            child: TextField(
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: '0.00'),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.green, spreadRadius: 3),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.info),
            color: Colors.black,
            onPressed: () {
             // buildDialog(context);
            },
          ),
        ],
      ),
    );
}
