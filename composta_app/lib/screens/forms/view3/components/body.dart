import 'package:carousel_widget/carousel_widget.dart';
import 'package:composta_app/assets/content.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:composta_app/tools/buttonimage.dart';
import 'package:composta_app/tools/carouselcontent.dart';

class Body extends StatelessWidget {
  List<CarouselWidgetContent> contentL = [
    new CarouselWidgetContent("", "desc1", "lib/assets/img/plant.png", ""),
    new CarouselWidgetContent("Dos", "desc2", "lib/assets/img/plant.png", "")
  ];
  @override
  Widget build(BuildContext context) {
    List<Widget> getWidgets(ListContent aux) {
      ListContent aux1=aux.content.elementAt(0);
      List<Widget> widgets = new List();
      for (ListContent contents in aux1.content) {
        widgets.add(
          Expanded(
            child: ImageButton("lib/assets/img/None.flr", ""),
          ),
        );
      }

      return widgets;
    }

    Section section = Sections.content.elementAt(5) as Section;
    ListContent aux = section.content.elementAt(0);
    return Container(
        child: ListView(padding: const EdgeInsets.all(5), children: <Widget>[
      Text(
        section.title,
        style: TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
      Text(aux.title, style: TextStyle(fontSize: 15)),
      //Hacer dinamico esto
      Container(
        child: Row(
          children: getWidgets(section.content.elementAt(0)),
        ),
      ),
      Text(
        "INSTRUCCIONES",
        style: TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
      Container(
        height: 400,
      ),
  
      Container(
          margin: const EdgeInsets.fromLTRB(100.0, 10.0, 90.0, 20.0),
          child: new RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.transparent),
            ),
            child: const Text('Comenzar', style: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.pushNamed(context, '/NewCompost4');
            },
          ))
    ]));
  }
   List<Fragment> _getScreen(List<CarouselWidgetContent> index) {
    List listings = new List<Fragment>();
    for (int i = 0; i < index.length; i++) {
      var fragment = Fragment(
          child: ListView(
        children: <Widget>[
          Container(
            height: 50.0,
           // margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 50.0),
            child: FlareActor(index.elementAt(i).file, animation: index.elementAt(i).animation),
          ),
          Container(
            height: 80.0,
           // margin: const EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 0.0),
            child: Text(
              index.elementAt(i).description,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ));
      listings.add(
        fragment,
      );
    }
    return listings;
  }
}
