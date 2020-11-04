import 'package:composta_app/src/boom_menu.dart';
import 'package:composta_app/src/boom_menu_item.dart';
import 'package:composta_app/tools/appbar.dart';
//import 'package:composta_app/tools/menu.dart';
import 'package:flutter/material.dart';
import 'package:composta_app/compostSummary.dart';
import 'package:composta_app/dataModel/compost.dart';
import 'package:composta_app/assets/content.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Compost> composts = [
    new Compost("Composta 1", 1),
    new Compost("Composta 2", 2),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarbuild(context),
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: BoomMenu(
                animatedIcon: AnimatedIcons.menu_close,
                animatedIconTheme: IconThemeData(size: 22.0),
                overlayColor: Colors.black,
                overlayOpacity: 0.7,
                children: [
                  MenuItem(
                      child: Container(
                          height: 50,
                          child: Image.asset('lib/assets/img/logo.png',
                              fit: BoxFit.cover, height: 250)),
                      title: "Acerca de",
                      titleColor: Colors.white,
                      backgroundColor: Colors.blueAccent,
                      onTap: () {
                        Navigator.of(context).pushNamed("/About");
                      }),
                  MenuItem(
                      child: Container(
                          height: 50,
                          child: Image.asset('lib/assets/img/logo.png',
                              fit: BoxFit.cover, height: 250)),
                      title: "Guía",
                      titleColor: Colors.white,
                      backgroundColor: Colors.blueAccent,
                      onTap: () {
                        Navigator.of(context).pushNamed("/Welcome");
                      }),
                ])),
        body: Container(
            child: ListView(
                padding: const EdgeInsets.all(5), children: getWidgets())));
  }

  List<Widget> getWidgets() {
    Section section = Sections.content.elementAt(10) as Section;
    Section compostImage = Sections.content.elementAt(11) as Section;
    List<Widget> widgets = List();
    widgets.add(Text(section.title, style: TextStyle(fontSize: 25)));

    int i = 0;
    for (Compost compost in composts) {
      if (compost.type == 1) {
        compost.image = compostImage.content.elementAt(0);
      } else {
        compost.image = compostImage.content.elementAt(1);
      }
      widgets.add(CompostSummary(compost: compost));
      i++;
    }

    for (int j = 3 - i; j > 0; j--) {
      {
        widgets.add(getCard(
            section.content.elementAt(0), section.content.elementAt(1)));
      }
    }
    return widgets;
  }

  Widget getCard(String image, String title) {
    //String nextView='/NewCompost';
    final cardImage = new Container(
      margin: new EdgeInsets.symmetric(vertical: 20.0),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage(image),
        height: 100.0,
        width: 100.0,
      ),
    );

    final cardContent = new Container(
      margin: new EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(title, style: TextStyle(fontSize: 28)),
        ],
      ),
    );

    final cardBack = new Container(
        child: cardContent,
        height: 130.0,
        margin: new EdgeInsets.only(left: 60.0, bottom: 20.0, top: 20.0),
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
          Navigator.of(context).pushNamed('/NewCompost', arguments: "");
        },
        child: new Stack(children: <Widget>[
          cardBack,
          cardImage,
        ]));
  }
}
