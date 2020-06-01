import 'package:flutter/material.dart';
import 'package:composta_app/compostSummary.dart';
import 'package:composta_app/dataModel/compost.dart';
import 'package:composta_app/assets/content.dart';


class  Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Compost> composts = [
 new Compost("Composta 1",1),
  new Compost("Composta 2",2),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: const EdgeInsets.all(5),
        children: getWidgets()
      )
    );
  }

  List<Widget> getWidgets() {
    Section section=Sections.content.elementAt(11) as Section;
    List<Widget> widgets=List();
    widgets.add(Text(section.title, style: TextStyle(fontSize: 25)));

    int i=0;
    for (Compost compost in composts) {
      widgets.add(CompostSummary(compost:compost)); 
      i++;
    }
    /*for (int j = 3-i; j<3; j--) {
      //for (ListContent content in section.content) 
      {
        widgets.add(getCard(section.content.elementAt(0),section.content.elementAt(1))); 
      } 
    }*/
    return widgets;
  }

  Widget getCard(String image,String title) {
    //String nextView='/NewCompost';
    final cardImage = new Container(
    margin: new EdgeInsets.symmetric(vertical: 20.0),
    alignment: FractionalOffset.centerLeft,
    child: new Image(
      image: new AssetImage(image),
      height: 92.0,
      width: 92.0,
    ),
  );

final cardContent= new Container(
    margin: new EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
            constraints: new BoxConstraints.expand(),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(height: 4.0),
                Text(title, style: TextStyle(fontSize: 30)),
                new Container(height: 10.0),
                new Container(
                    margin: new EdgeInsets.symmetric(vertical: 8.0),
                    height: 2.0,
                    width: 18.0,
                    color: new Color(0xff00c6ff)),
              ],
            ),
  );

  final cardDetail = new Container(  
      child: cardContent,
      height: 130.0,
      margin: new EdgeInsets.only(left: 46.0,bottom:20.0,top:20.0),
      decoration: new BoxDecoration(
        color: Colors.blue,
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

    return GestureDetector(
        onTap: () {
//Navigator.pushNamed(context, nextView,arguments: compost);
        },
        child: new Stack(children: <Widget>[
          cardDetail,
          cardImage,
        ]));
  }
}
