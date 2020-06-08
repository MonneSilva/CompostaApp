import 'package:composta_app/assets/content.dart';
import 'package:flutter/material.dart';
import 'package:composta_app/tools/btncontent.dart';
import 'package:composta_app/tools/carouselcontent.dart';
import 'package:composta_app/tools/carouselview.dart';



class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return CarouselView(getInfo(),new BtnContent("Ok","","/Home"));
  }

  List<CarouselWidgetContent> getInfo()
  {
    final List<CarouselWidgetContent> info=new List();

    Section section=Sections.content.elementAt(7) as Section;
    
    for (ListContent contents in section.content) {
      info.add(new  CarouselWidgetContent(contents.title,contents.content.elementAt(2) as String,contents.content.elementAt(0) as String,contents.content.elementAt(1) as String));
    }
    return info;

  }
}


