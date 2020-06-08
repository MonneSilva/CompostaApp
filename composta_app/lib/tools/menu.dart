import 'package:composta_app/assets/content.dart';
import 'package:flare_flutter/flare_actor.dart';
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
    children: getMenu(context, id),
  );
}

getMenu(BuildContext context, int id) {
  List<MenuItem> menu = new List();
  Section section = Sections.content.elementAt(id) as Section;
  for (ListContent content in section.content) {
    menu.add(MenuItem(
      child: Container(
          height: 50,
          child: FlareActor(content.content.elementAt(0),
              animation: content.content.elementAt(1))),
      title: content.title,
      titleColor: Colors.white,
      backgroundColor: content.content.elementAt(3) as Color,
      onTap: () => Navigator.pushNamed(context, content.content.elementAt(2)),
    ));
  }
  return menu;
}

class Content {}
