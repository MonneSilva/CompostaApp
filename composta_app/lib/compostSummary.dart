import 'package:flutter/material.dart';
import 'dataModel/compost.dart';

class CompostSummary extends StatelessWidget {
 final Compost compost;
 
const CompostSummary({Key key, this.compost}) : super(key: key);
@override
  Widget build(BuildContext context) {
    String nextView='/CompostDetail';

    //Imagen
    final cardImage = new Container(
    margin: new EdgeInsets.symmetric(vertical: 15.0),
    alignment: FractionalOffset.centerLeft,
    child: new Image(
      image: new AssetImage(compost.image),
      height: 130.0,
      width: 130.0,
    ),
  );

//Texto de card
final cardContent= new Container(
    margin: new EdgeInsets.fromLTRB(80.0, 16.0, 16.0, 16.0),
            constraints: new BoxConstraints.expand(),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(height: 4.0),
                Text(compost.name, style: TextStyle(fontSize: 25)),
                new Container(height: 10.0),
                new Text("05/06/2019", style: TextStyle(fontSize: 20)),
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
      margin: new EdgeInsets.only(left: 60.0,bottom:20.0,top:20.0),
      decoration: new BoxDecoration(
        color: Colors.cyan[600],
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
        Navigator.pushNamed(context, nextView,arguments: compost);
        },
        child: new Stack(children: <Widget>[
          cardDetail,
          cardImage,
        ]));
  }
  

  
}
class ScreenArguments {
  final Compost compost;
  ScreenArguments(this.compost);
}