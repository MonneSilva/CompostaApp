import 'package:composta_app/assets/content.dart';
import 'package:flutter/material.dart';
import 'package:composta_app/src/boom_menu.dart';
import 'package:composta_app/src/boom_menu_item.dart';

Widget boomMenuBuild(BuildContext context, int id) {
  return BoomMenu(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22.0),
      //child: Icon(Icons.add),
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      //scrollVisible: scrollVisible,
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
              Navigator.of(context).pushNamed("/About");
            }),
      ]
      //getMenu(context, id),
      );
}

getMenu(BuildContext context, int id) {
  List<MenuItem> menu = new List();
  Section section = Sections.content.elementAt(id) as Section;
  for (ListContent content in section.content) {
    menu.add(MenuItem(
        child: Container(
            height: 50,
            child: Image.asset('lib/assets/img/logo.png',
                fit: BoxFit.cover, height: 250)),
        title: content.title,
        titleColor: Colors.white,
        backgroundColor: content.content.elementAt(3) as Color,
        onTap: () {
          switch (content.content.elementAt(4)) {
            case 1:
              {
                Navigator.of(context).pop();
              }
              break;

            case 2:
              {
                Navigator.of(context).pushNamed(content.content.elementAt(2));
              }
              break;
            default:
              {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    content.content.elementAt(2),
                    (Route<dynamic> route) => false);
              }
              break;
          }
        }));
    return menu;
  }
}
