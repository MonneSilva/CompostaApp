import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  List<String> fields = ["Fruta", "Verdura"];
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
      Text("¿Qué residuos genera", style: TextStyle(fontSize: 28)),
    );
    widget.add(Text("Seleccione las opciones correspondientes:"));
    for (String f in fields) {
      widget.add(field(f));
    }
    widget.add(RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.transparent),
      ),
      child: const Text('Siguiente', style: TextStyle(fontSize: 20)),
      onPressed: () {
        Navigator.pushNamed(context, '/NewCompost5');
      },
    ));
    return widget;
  }

  Widget field(text) {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          Text(text),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {},
              ),
              Container(
                width: 100,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    hintText: "1",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(0.0)),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
            ],
          )
        ]));
  }
}
