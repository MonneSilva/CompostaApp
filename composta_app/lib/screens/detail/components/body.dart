import 'package:composta_app/assets/content.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:composta_app/dataModel/compost.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Compost aux = ModalRoute.of(context).settings.arguments;
    return           _getContent(aux);
  }

  Container _getContent(Compost aux) {
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
          //getField(section),
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



getField(Section section) {
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
