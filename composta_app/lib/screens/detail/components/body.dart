import 'package:composta_app/assets/content.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:composta_app/dataModel/compost.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  _getContent();
  }
  List<Widget> getFields() {
     
   Section section = Sections.content.elementAt(8) as Section;

    List<Widget> widget = List();
    for (ListContent aux in section.content) {
      widget.add(field(aux));
    }
    return widget;
  }

  Container _getContent() {
    
   Section section = Sections.content.elementAt(8) as Section;
    ListContent aux=section.content.elementAt(3);
    return new Container(
      child: new ListView(
        padding: new EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 32.0),
        children: <Widget>[
          Container(
            height: 180.0,
            margin: const EdgeInsets.symmetric(horizontal:10),
            child: FlareActor(aux.content.elementAt(0), animation: aux.content.elementAt(1))
                    
          ),
          new Container(
           // decoration: myBoxDecoration(),
            padding: new EdgeInsets.fromLTRB(100.0, 10.0, 20.0, 10.0),
            child: new Text(section.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ),
          Container(
            child: Column(
          children: getFields(),
            ),
      )
        ],
      ),
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(),
  );
}



getField() {
  //for (ListContent content in section.content) 
  return new Container(
        child: new ListView(
            padding: new EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 32.0),
            children: <Widget>[
          new Text("Title"),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Enter a search term'),
          ),
           new Text("aux"),
        ]));
}

 Widget field(ListContent aux)
 { return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(left: 20),
            child: Text(aux.title, style: TextStyle(fontSize: 25)),
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