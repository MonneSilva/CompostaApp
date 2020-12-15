import 'package:composta_app/assets/content.dart';
import 'package:composta_app/tools/appbar.dart';
import 'package:composta_app/tools/btncontent.dart';
import 'package:composta_app/tools/carouselcontent.dart';
import 'package:composta_app/tools/carouselview.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
        //backgroundColor: Color.fromRGBO(174, 212, 236, 1),
        appBar: appBarbuild(context),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromRGBO(174, 212, 236, 1), Colors.white])),
          child: CarouselView(getInfo(), new BtnContent("Ok", "", "/Home", 3)),
        ));
  }

  List<CarouselWidgetContent> getInfo() {
    final List<CarouselWidgetContent> info = new List();

    Section section = Sections.content.elementAt(2) as Section;

    for (ListContent contents in section.content) {
      info.add(new CarouselWidgetContent(
          contents.title,
          contents.content.elementAt(2) as String,
          contents.content.elementAt(0) as String,
          contents.content.elementAt(1) as String));
    }
    return info;
  }
}
