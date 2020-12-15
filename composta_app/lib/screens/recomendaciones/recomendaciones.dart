import 'package:composta_app/dataModel/composta/compost.dart';
import 'package:composta_app/dataModel/composta/compost_dao.dart';
import 'package:composta_app/src/boom_menu.dart';
import 'package:composta_app/src/boom_menu_item.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:composta_app/tools/appbar.dart';
import 'dart:convert';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:sembast/utils/value_utils.dart';

class RecomeScreen extends StatefulWidget {
  @override
  _RecomeScreenState createState() => _RecomeScreenState();
}

class _RecomeScreenState extends State<RecomeScreen> {
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
      body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Image.asset('lib/assets/img/Logo_sin_nombre.png',
                fit: BoxFit.cover, height: 250),
            Container(
                child: Text("Recomendaciones Generales",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
            Container(
                padding: EdgeInsets.all(20),
                height: 180,
                child: Text(
                  "-Tienen que mezclarse bien el material café y el material verde.\n -Mantener una relación de 50% material café y 50% material verde.\n-Agregar los materiales en trozos pequeños para facilitar la descomposición.\n-No añadir demasiados restos orgánicos para que los microorganismos sean capaces de degradar la materia.\n-No llenar el contenedor hasta el borde, dejar 10 o 15 cm libres para evitar que se desborde al momento de mezclar.\n-Cuando los materiales ya no se distingan y se encuentren bien degradados, tenga un olor a tierra y un color marrón oscuro, la composta estará lista.\n-Evitar agregar carnes, huesos, estiércol de animales carnívoros, plásticos y cítricos.",
                )),
            Container(
                child: Text("Recomendaciones de humedad",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
            Container(
                padding: EdgeInsets.all(20),
                height: 180,
                child: Text("-Evitar un exceso de humedad dado que el agua forma una capa o película alrededor de los residuos lo que provoca que no llegue oxígeno al material para degradarlo. \n" +
                    "-Si la humedad es alta: añadir aserrín en la mezcla de material café. \n" +
                    "-Si la humedad es baja: añadir un poco más de material verde o un poco de agua. \n" +
                    "-Evitar demasiado material seco. \n" +
                    "-Evitar demasiado contacto con el sol.")),
            Container(
                child: Text("Recomendaciones de Mal Olor",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
            Container(
                padding: EdgeInsets.all(20),
                height: 180,
                child: Text("-Agregar material café como hojas y ramas secas.\n" +
                    "-Voltear o mezclar la composta para ayudar a la aireación.\n" +
                    "-Mantener una mezcla continua entre material café y material verde.\n" +
                    "-Evitar el exceso de humedad.\n" +
                    "-Agregar un poco de cal en la última capa para alejar a roedores y otros animales que pudieran ser atraídos por el mal olor.")),
            Container(
                child: Text("Recomendaciones de PH",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
            Container(
                padding: EdgeInsets.all(20),
                height: 180,
                child: Text("-El rango ideal es de 4.5 a 8.5.\n" +
                    "-En caso de que el pH sea menor a 4.5, añadir cal agrícola a la mezcla para mantener estables los niveles de acidez durante todo el proceso de fermentación.\n" +
                    "-En caso de que el pH sea mayor a 8.5, adicionar material más seco con mayor contenido en carbono (restos de poda, hojas secas o aserrín).")),
            Container(
                child: Text("Recomendaciones de Temperatura",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
            Container(
                padding: EdgeInsets.all(20),
                height: 180,
                child: Text("-Medir la temperatura del interior de la composta, para esto se puede atar el termómetro a una varilla o palo que faciliten introducirlo.\n" +
                    "-Los primeros tres o cuatro días tiene que llegar a una temperatura aproximada de 50 a 60°C que después tiene que disminuir progresivamente.\n" +
                    "-Si no se calienta significa que la mezcla no está bien hecha. Tal vez está demasiado húmedo o demasiado seco o no hay suficiente materia orgánica rica en nitrógeno (hojas verdes, restos de poda).\n" +
                    "-Evitar el volteo o mezclado en exceso.\n" +
                    "-Si la temperatura supera los 70°C aumentar la aireación, si la temperatura no disminuye, la última opción es rehacer la composta.")),
            RaisedButton(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.green),
              ),
              child: Text('Ok',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ])),
    );
  }
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

class Animation {
  String file;
  String animation;
  Animation({this.file, this.animation});
}
