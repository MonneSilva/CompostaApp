import 'package:flutter/material.dart';
import 'package:composta_app/tools/btncontent.dart';
import 'package:composta_app/tools/carouselcontent.dart';
import 'package:composta_app/tools/carouselview.dart';


List<CarouselWidgetContent> contentL = [
  new CarouselWidgetContent("¿Cómo medir? Temperatura", "desc1", "lib/assets/img/plant.png"),
  new CarouselWidgetContent("¿Cómo medir? PH", "desc2", "lib/assets/img/plant.png")
];

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return CarouselView(contentL,new BtnContent("Ok","","/Home"));
  }
}


