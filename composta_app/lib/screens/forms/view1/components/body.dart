import 'package:composta_app/assets/content.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
   
   
   List<Widget> getWidgets(BuildContext context)
  {
    Section section=Sections.content.elementAt(4) as Section;
    List<Widget> widgets= new List();
    widgets.add(Text(section.title,style: TextStyle( fontSize: 20,),textAlign: TextAlign.center,));
    for (ListContent contents in section.content) {
      widgets.add(new ImageButton(contents.content.elementAt(0),contents.title,contents.content.elementAt(1)));
    }
    widgets.add(Container(
          margin: const EdgeInsets.fromLTRB(100.0, 10.0, 90.0, 20.0),
          child: new RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.transparent),
                  ),
                  child: const Text('Comenzar',
                      style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/NewCompost2');
                  },
                )));
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

    dialogContent(List<String> content){
    return Stack(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(
          top: Consts.avatarRadius + Consts.padding,
          bottom: Consts.padding,
          left: Consts.padding,
          right: Consts.padding,
        ),
        margin: EdgeInsets.only(top: Consts.avatarRadius),
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(Consts.padding),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: const Offset(0.0, 10.0),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Text(
                content.elementAt(0),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
               content.elementAt(1),
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 24.0),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // To close the dialog
                  },
                  child: Text("OK"),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        left: Consts.padding,
        right: Consts.padding,
        child: CircleAvatar(
          backgroundColor: Colors.blueAccent,
          radius: Consts.avatarRadius,
        ),
      ),
    ],
  );
    }



    void _showDialog(List<String> content) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return 
        Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Consts.padding),
    ),
    elevation: 0.0,
    backgroundColor: Colors.transparent,
    child: dialogContent(content),
  );

      },
    );
  }
  

  



   
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
           _showDialog([text,popupInf]);
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
