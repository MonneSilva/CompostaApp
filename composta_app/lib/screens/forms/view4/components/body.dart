import 'package:flutter/material.dart';

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
    widget.add(Text("Seleccione las opciones correspondientes:",
        textAlign: TextAlign.center));
    for (String f in fields) {
      widget.add(Field(f, false).build(context));
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
                Navigator.pushNamed(context, '/NewCompost7');
              },
            ),
          ]),
    );
    return widget;
  }
}

class Field {
  final String label;
  bool check;

  int value = 0;
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  Field(this.label, this.check);

  Widget build(BuildContext context) {
    myController.text = "0.00";
    return Container(
        color: this.check ? Colors.lightGreen : Colors.white,
        child: Row(children: <Widget>[
          Checkbox(
            onChanged: (bool value) {
              check = value;
            },
            activeColor: Color(0xFF6200EE),
            value: this.check,
          ),
          Text(this.label),
        ]));
  }
}
