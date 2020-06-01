
import 'package:composta_app/tools/btncontent.dart';
import 'package:composta_app/tools/carouselcontent.dart';
import 'package:composta_app/tools/carouselview.dart';
import 'package:flutter/material.dart';


List<CarouselWidgetContent> contentL = [
  new CarouselWidgetContent("", "desc1", "lib/assets/img/plant.png"),
  new CarouselWidgetContent("Dos", "desc2", "lib/assets/img/plant.png")
];


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();

}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    /*String s;
    new File('lib/appContent.json').readAsString().then((c) => s+=c);
*/
    return CarouselView(contentL, new BtnContent("Comenzar","","/Home"));
  }

  
}


