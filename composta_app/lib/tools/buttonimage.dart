import 'package:flutter/material.dart';
import 'package:composta_app/tools/popup.dart';

class ImageButton extends StatelessWidget {
  final String image;
  final String text;

  const ImageButton( this.image, this.text);
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
              MaterialPageRoute(builder: (context) => buildDialog(context)));
        },
        child: new Stack(children: <Widget>[
          box,
        ]));
  }
}
