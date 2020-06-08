import 'package:flutter/material.dart';
import 'package:composta_app/tools/buttonimage.dart';
import 'package:composta_app/tools/carouselcontent.dart';

class Body extends StatelessWidget {
  List<CarouselWidgetContent> contentL = [
  new CarouselWidgetContent("", "desc1", "lib/assets/img/plant.png",""),
  new CarouselWidgetContent("Dos", "desc2", "lib/assets/img/plant.png","")
];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: const EdgeInsets.all(5),
        children: <Widget>[
          Text("¿Donde desea compostar?"),
          Text("Seleccione una opción:"),
          //Hacer dinamico esto
          Container(
            child: Row(
              children: <Widget>[
    Expanded(
             child: ImageButton("composta", "lib/assets/img/plants.png"),),
             Expanded(
             child: ImageButton("composta", "lib/assets/img/plants.png"),),
              ],
            ),
          ),
          Text("INSTRUCCIONES"),
         // CarouselView(contentL),
         RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.transparent),
                  ),
                  child: const Text('Siguiente',
                      style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/NewCompost4');
                  },
                ),
        ],
      ),
    );
  }
}
