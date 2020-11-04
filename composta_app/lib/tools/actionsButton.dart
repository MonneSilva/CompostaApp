import 'package:flutter/material.dart';

Widget actionsButtonsBuild(
    BuildContext context, String b1, String b2, String r1, String r2) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.transparent),
          ),
          child: Text(b1, style: TextStyle(fontSize: 20)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.transparent),
          ),
          child: Text(b2, style: TextStyle(fontSize: 20)),
          onPressed: () {
            if (r2 == "pop")
              Navigator.of(context).pop();
            else
              Navigator.of(context).pushNamed(r2);
          },
        ),
      ]);
}
