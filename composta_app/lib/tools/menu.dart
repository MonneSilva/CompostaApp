import 'package:flutter/material.dart';
import 'package:composta_app/src/boom_menu.dart';
import 'package:composta_app/src/boom_menu_item.dart';
Widget boomMenuBuild(BuildContext context) {
    return  BoomMenu(
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
          child: Icon(Icons.accessibility, color: Colors.black),
          title: "Mis compostas",
          titleColor: Colors.white,
          backgroundColor: Colors.deepOrange,
          onTap: () => Navigator.pushNamed(context, '/'),
        ),
        MenuItem(
          child: Icon(Icons.brush, color: Colors.black),
          title: "Recomendaciones",
          titleColor: Colors.white,
          backgroundColor: Colors.green,
          onTap: () => Navigator.pushNamed(context, '/Recomendations'),
        ),
        MenuItem(
          child: Icon(Icons.keyboard_voice, color: Colors.black),
          title: "Preguntas frecuentes",
          titleColor: Colors.white,
       /*  subtitle: "You Can View the Noel Profile",
          subTitleColor: Colors.white,*/
          backgroundColor: Colors.blue,
          onTap: () => Navigator.pushNamed(context, '/Questions'),
        ),
        MenuItem(
          child: Icon(Icons.keyboard_voice, color: Colors.black),
          title: "Guía Interactiva",
          titleColor: Colors.white,
       /*  subtitle: "You Can View the Noel Profile",
          subTitleColor: Colors.white,*/
          backgroundColor: Colors.blue,
          onTap: () => Navigator.pushNamed(context, '/Questions'),
        ),
        
      ],
    );
}