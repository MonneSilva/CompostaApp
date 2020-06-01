import 'package:flutter/material.dart';
import 'package:composta_app/tools/buttonimage.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          padding: const EdgeInsets.all(5),
          children: <Widget>[
       Text("¿Donde se puede compostar"),
            //Hacer dinamico esto
            ImageButton("composta","lib/assets/img/plants.png"),
            ImageButton("composta","lib/assets/img/plants.png"),
            RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.transparent),
                  ),
                  child: const Text('Comenzar',
                      style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/NewCompost2');
                  },
                ),
          ],
        ),
      );
  }
}