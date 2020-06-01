import 'package:flutter/material.dart';
import 'package:composta_app/dataModel/compost.dart';

class Body extends StatelessWidget {
  List<Compost> composts = [
    new Compost("Composta 1", 1),
    new Compost("Composta 2", 2),
    new Compost("Composta 3", 1),
  ];
  static const TextStyle linkStyle = const TextStyle(
    color: Colors.blue,
    decoration: TextDecoration.underline,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      padding: const EdgeInsets.all(5),
      children: <Widget>[
        Text("¿Donde compostar?", style: TextStyle(fontSize: 25)),
        //Hacer dinamico esto
        new CompostSummary(compost: composts.elementAt(0)),
        new CompostSummary(compost: composts.elementAt(1)),
        new RaisedButton(
          child: Text('Open route'),
          onPressed: () {
           /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FormView()),
            );*/
          },
        ),
      ],
    ));
  }
}

class CompostSummary extends StatelessWidget {
  final Compost compost;
  const CompostSummary({Key key, this.compost}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final cardContent = new Container(
      margin: new EdgeInsets.all(20),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Image(
            image: new AssetImage(compost.image),
            height: 120.0,
            width: 120.0,
          ),
          new Container(height: 4.0),
          Text(compost.name, style: TextStyle(fontSize: 30)),
        ],
      ),
    );

    final cardDetail = new Container(
        child: cardContent,
        height: 220.0,
        margin: new EdgeInsets.all(30),
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
          Navigator.pushNamed(context, '/Welcome');
          /*
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => buildDialog(context)));
       */
       },
        child: new Stack(children: <Widget>[
          cardDetail,
        ]));
  }
}
