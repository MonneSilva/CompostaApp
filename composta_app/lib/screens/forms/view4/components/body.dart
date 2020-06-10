import 'package:composta_app/assets/content.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  List<String> fields = ["Fruta", "Verdura","Tierra","Ejemplo1","Ejemplo2"];
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
   Section section = Sections.content.elementAt(6) as Section;
    List<Widget> widget = List();
    widget.add(Text(section.title,style: TextStyle(fontSize: 20),textAlign: TextAlign.center));
    widget.add(Text(section.content.elementAt(0),style: TextStyle(fontSize: 15)));
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
              Navigator.pushNamed(context, '/NewCompost6');
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
