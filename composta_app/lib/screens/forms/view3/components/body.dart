import 'package:carousel_slider/carousel_slider.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
class Body extends StatefulWidget {
  @override
  State createState() => new _BodyState();
}

class _BodyState extends State<Body> {
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
    int _currentIndex = 0;
    int _option = 1;
    List cardList1 = [
      buildItem(
          context,
          "1",
          "Obtener un bate plástico de 20L o si se prefiere más grande en consideración de la cantidad de residuos generados",
          Animation(
              file: "lib/assets/img/Contenedor_20L.flr",
              animation: "")),
      buildItem(
          context,
          "2",
          "Perforar orificios con diámetro de 2-3 cm, en la pared del bote.\n" +
              "Hacer 3 filas de orificios cada 10 cm alrededor del contorno.",
          Animation(
              file: "lib/assets/img/Control_Composta.flr",
              animation: "Control_Corriendo")),
      buildItem(
          context,
          "3",
          "Perforar 5 orificios en la base del bote",
          Animation(
              file: "lib/assets/img/Control_Composta.flr",
              animation: "Control_Corriendo")),
      buildItem(
          context,
          "4",
          "Colocar una capa de 10 cm de paja, aserrín o poda para que absorba el exceso de humedad",
          Animation(
              file: "lib/assets/img/Control_Composta.flr",
              animation: "Control_Corriendo"))
    ];
    List cardList2 = [
      buildItem(
          context,
          "1",
          "Se pueden utilizar cajas de madera o plásticas que se utilizan para el transporte de frutas, botellas, etc.",
          Animation(
              file: "lib/assets/img/Control_Composta.flr",
              animation: "Control_Corriendo")),
      buildItem(
          context,
          "2",
          "Conseguir malla metálica y recortarla en forma de cruz.",
          Animation(
              file: "lib/assets/img/Control_Composta.flr",
              animation: "Control_Corriendo")),
      buildItem(
          context,
          "3",
          "Colocar y sujetar la malla en las paredes y base de las cajas para que contenga los residuos.",
          Animation(
              file: "lib/assets/img/Control_Composta.flr",
              animation: "Control_Corriendo")),
      buildItem(
          context,
          "4",
          "Colocar una base de materia café (vegetación seca) en cada caja.",
          Animation(
              file: "lib/assets/img/Control_Composta.flr",
              animation: "Control_Corriendo")),
      buildItem(
          context,
          "5",
          "Rellenar con los residuos orgánicos intercalando con capas de materia café. \nNota: procurar que la última capa sea de materia café.",
          Animation(
              file: "lib/assets/img/Control_Composta.flr",
              animation: "Control_Corriendo"))
    ];
    getcardList() {
      if (_option == 1)
        return cardList1;
      else
        return cardList2;
    }

    List<T> map<T>(List list, Function handler) {
      List<T> result = [];
      for (var i = 0; i < list.length; i++) {
        result.add(handler(i, list[i]));
      }
      return result;
    }

    buildImageButton(String image, String text, int opc) {
      final boxContent = new Container(
        margin: new EdgeInsets.all(20),
        constraints: new BoxConstraints.expand(),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Image(
              image: new AssetImage(image),
              height: 50.0,
              width: 50.0,
            ),
            new Container(height: 2.0),
            Text(
              text,
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );

      getBox(Color color) {
        return new Container(
            child: boxContent,
            height: 130.0,
            width: 130.0,
            margin: new EdgeInsets.all(10),
            decoration: new BoxDecoration(
              color: color,
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
      }

      Color _color = Colors.orange;
      return GestureDetector(
          onTap: () {
            setState(() {
              _color = Colors.green;
              _option = opc;
              print(_option);
              print(_color);
            });

            //option = opc;
          },
          child: new Stack(children: <Widget>[
            getBox(_color),
          ]));
    }

    return Container(
      child: ListView(
        padding: const EdgeInsets.all(5),
        children: <Widget>[
          Text(
            "¿Donde desea compostar?",
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          Text(
            "Seleccione una opción:",
            style: TextStyle(fontSize: 20),
          ),
          //Hacer dinamico esto
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildImageButton(
                    "lib/assets/img/plant.png", "Contenedor o caja", 1),
                buildImageButton(
                    "lib/assets/img/plant.png", "Multiples cajas", 2),
              ],
            ),
          ),
          Text(
            "INSTRUCCIONES:",
            style: TextStyle(fontSize: 20),
          ),
          CarouselSlider(
            height: 400.0,
            autoPlay: false,
            aspectRatio: 2.0,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: getcardList().map((card) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: Colors.white,
                    child: card,
                  ),
                );
              });
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(getcardList(), (index, url) {
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      _currentIndex == index ? Colors.blueAccent : Colors.grey,
                ),
              );
            }),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.transparent),
                  ),
                  child: const Text('Anterior', style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.transparent),
                  ),
                  child:
                      const Text('Siguiente', style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/NewCompost4');
                  },
                ),
              ]),
        ],
      ),
    );
  }
}

class Animation {
  String file;
  String animation;
  Animation({this.file, this.animation});
}

Widget buildItem(BuildContext context, String number, String instruction,
    Animation animation) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(number,
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
        Container(
            height: 180,
            child: FlareActor(animation.file, animation: animation.animation)),
        Flexible(
            child: Text(instruction,
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.black, fontSize: 17.0))),
      ],
    ),
  );
}
