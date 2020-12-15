import 'package:composta_app/dataModel/composta/compost.dart';
import 'package:composta_app/dataModel/residuo/residuo.dart';
import 'package:composta_app/dataModel/residuo/residuo_dao.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  ResiduoDao c = ResiduoDao();
  List<Residuo> residuos = new List();

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
    final Compost data = ModalRoute.of(context).settings.arguments as Compost;
    return Container(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: <Widget>[
              Text('¿Que residuos genera?',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 28)),
              Expanded(
                child: FutureBuilder<List<Residuo>>(
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.none &&
                        snapshot.hasData == null) {
                      print("asdff ${snapshot.data}");
                      return Container(color: Colors.red);
                    }
                    residuos = snapshot.data;
                    return ListView.builder(
                        itemCount: residuos.length,
                        itemBuilder: (context, index) {
                          Residuo residuo = residuos[index];

                          final myController = TextEditingController();
                          return residuos.length == null
                              ? CircularProgressIndicator()
                              : Column(children: [
                                  Row(children: <Widget>[
                                    Expanded(
                                        child:
                                            new Text(residuo.data['Material'])),
                                    Checkbox(
                                      value: residuo.data['value'],
                                      onChanged: (bool value) {
                                        setState(() {
                                          residuo.data['value'] =
                                              !residuo.data['value'];
                                          print(value);
                                        });
                                        value
                                            ? residuos.add(residuo)
                                            : residuos.remove(residuo);
                                      },
                                    ),
                                  ]),
                                  Visibility(
                                    visible: residuo.data['value'],
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              flex: 1, child: new Container()),
                                          Expanded(
                                              child: IconButton(
                                            icon: Icon(Icons.remove),
                                            onPressed: () {
                                              myController.text = (double.parse(
                                                          myController.text) -
                                                      1)
                                                  .toString();
                                            },
                                          )),
                                          Expanded(
                                              child: TextFormField(
                                            onChanged: (value) {
                                              if (residuo.data['value'])
                                                residuo.data['Peso'] =
                                                    double.parse(value);
                                            },
                                            controller: myController,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                filled: true,
                                                hintText: '0.00',
                                                labelText: residuo.data['UM']),
                                          )),
                                          Expanded(
                                              child: IconButton(
                                            icon: Icon(Icons.add),
                                            onPressed: () {
                                              myController.text = (double.parse(
                                                          myController.text) +
                                                      1)
                                                  .toString();
                                            },
                                          )),
                                        ]),
                                  )
                                ]);
                        });
                  },
                  future: c.getAll(),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red),
                      ),
                      child: const Text(' Anterior',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
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
                        List<Map> map = new List();

                        residuos.forEach((element) {
                          if (element.data['value']) map.add(element.data);
                        });
                        data.data['residuos'] = map;
                        Navigator.of(context)
                            .pushNamed('/NewCompost5', arguments: data);
                      },
                    ),
                  ]),
            ])));
  }
}
