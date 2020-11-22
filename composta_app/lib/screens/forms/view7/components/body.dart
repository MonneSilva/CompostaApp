import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  List<String> fields = [
    "Residuos mezclados de rastros",
    "Lodos activados crudos",
    "Estiércol de aves de corral",
    "Lodos activados digeridos",
    "Estiércol de vaca",
    "Estiércol de cerdo",
    "Pasto",
    "Maleza acuática",
    "Estiércol de oveja",
    "Estiércol de caballo",
    "Residuos de fruta",
    "Paja de avena",
    "Fracción orgánica de RSU",
    "Hojas caidas recientemente",
    "Paja de trigo",
    "Residuos de aserraderos",
    "Papel mezclado",
    "Aserrin",
    "Revistas commerciales",
    "Madera",
    "Papel periódico",
    "Papel Estraza",
    "Agua"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: const EdgeInsets.all(5),
        children: getFields(fields, context),
      ),
    );
  }

  List<Widget> getFields(fields, BuildContext context) {
    List<Widget> widget = List();
    widget.add(
      Text("¿Qué residuos genera?",
          textAlign: TextAlign.center, style: TextStyle(fontSize: 28)),
    );
    widget.add(Text("Seleccione las opciones correspondientes:"));
    for (String f in fields) {
      widget.add(Field(f).build(context));
    }
    widget.add(
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
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.green),
              ),
              child: Text('Siguiente',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, '/NewCompost5');
              },
            ),
          ]),
    );
    return widget;
  }
}

class Field {
  final String label;

  int value = 0;
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  Field(this.label);

  Widget build(BuildContext context) {
    myController.text = "0.00";
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                label,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15),
              ),
              Container(
                  child: Row(children: <Widget>[
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    myController.text =
                        (double.parse(myController.text) - 1).toString();
                  },
                ),
                Container(
                  width: 100,
                  height: 50,
                  child: TextField(
                    controller: myController,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      hintText: "0.00",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0)),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    myController.text =
                        (double.parse(myController.text) + 1).toString();
                  },
                )
              ])),
            ],
          )
        ]));
  }
}
