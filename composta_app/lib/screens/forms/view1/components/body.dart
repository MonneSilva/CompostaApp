import 'package:composta_app/assets/content.dart';
import 'package:flutter/material.dart';
import 'package:composta_app/tools/popup.dart';

class Body extends StatelessWidget {
   
   
   List<Widget> getWidgets(BuildContext context)
  {
    Section section=Sections.content.elementAt(4) as Section;
    List<Widget> widgets= new List();
    widgets.add(Text(section.title));
    for (ListContent contents in section.content) {
      widgets.add(new ImageButton(contents.content.elementAt(0),contents.title,""));
    }
    widgets.add(new RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.transparent),
                  ),
                  child: const Text('Comenzar',
                      style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/NewCompost2');
                  },
                ));
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
            height: 70.0,
            width: 70.0,
          ),
          new Container(height: 2.0),
          Text(text, style: TextStyle(fontSize: 15)),
        ],
      ),
    );

    final box = new Container(
        child: boxContent,
        height: 170.0,
        width: 170.0,
        margin: new EdgeInsets.all(10),
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
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => buildDialog(context,[text,popupInf])));
        },
        child: new Stack(children: <Widget>[
          box,
        ]));
  }
}