import 'package:composta_app/assets/content.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
 
    List<Widget> getWidgets(BuildContext context)
  {
    Section section=Sections.content.elementAt(14) as Section;
    List<Widget> widgets= new List();
    widgets.add(Text(section.title,style: TextStyle( fontSize: 20,),textAlign: TextAlign.center,));
    for (ListContent contents in section.content) {
      widgets.add(new ImageButton(contents.content.elementAt(0),contents.title,""));
    }
    return widgets;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          padding: const EdgeInsets.all(5),
          children: getWidgets(context),
        ),
      );
  }
}

class ImageButton extends StatelessWidget {
  final String image;
  final String text;
  final String popupInf;

  const ImageButton( this.image, this.text,this.popupInf);
  
  @override
  Widget build(BuildContext context) {

    final boxContent = new Container(
      margin: new EdgeInsets.all(20),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Image(
            image: new AssetImage(image),
            height: 150.0,
            width: 150.0,
          ),
          new Container(
            height: 2.0,
            margin: EdgeInsets.all(15),
            ),
          Text(text, style: TextStyle(fontSize: 15),textAlign: TextAlign.center),
        ],
      ),
    );

    final box = new Container(
        child: boxContent,
        height: 250.0,
        width: 250.0,
        margin: new EdgeInsets.only(bottom:20,left:80,right:60),
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
           Navigator.pushNamed(context, '/NewCompost3');
        },
        child: new Stack(children: <Widget>[
          Container(
          margin: EdgeInsets.only(top:30),
          child: box,
          )
        ]));
  }


 
}

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}
