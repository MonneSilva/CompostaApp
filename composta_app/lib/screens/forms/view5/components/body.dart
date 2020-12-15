import 'package:composta_app/dataModel/composta/compost.dart';
import 'package:composta_app/dataModel/composta/compost_dao.dart';
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
    print('Data on 5:' + data.data.toString());
    getResiduos() async {
      List<Residuo> res = new List();
      for (Map i in data.data['residuos']) {
        Residuo r = Residuo(id: null, data: i);
        res.add(r);
      }
      residuos = res;
      return res;
    }

    return Container(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: <Widget>[
              Text('Nutrientes',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 28)),
              Row(children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Text('Material',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20))),
                Expanded(
                    child: Text('N',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20))),
                Expanded(
                    child: Text('C',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20))),
                Expanded(
                    child: Text('H2O',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20))),
              ]),
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
                            return residuos.length == null
                                ? CircularProgressIndicator()
                                : Column(children: [
                                    Row(children: <Widget>[
                                      Expanded(
                                          flex: 2,
                                          child: Text(residuo.data['Material'],
                                              style: TextStyle(fontSize: 16))),
                                      Expanded(
                                          child: Text(
                                              ((residuo.data['Peso'] *
                                                          residuo.data['N']) /
                                                      100)
                                                  .toStringAsFixed(2),
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 16))),
                                      Expanded(
                                          child: Text(
                                              ((residuo.data['Peso'] *
                                                          residuo.data['C']) /
                                                      100)
                                                  .toStringAsFixed(2),
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 16))),
                                      Expanded(
                                          child: Text(
                                              ((residuo.data['Peso'] *
                                                          residuo.data['H2O']) /
                                                      100)
                                                  .toStringAsFixed(2),
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 16))),
                                    ]),
                                    Container(
                                      height: 5,
                                      color: Colors.lightBlue[100],
                                    )
                                  ]);
                          });
                    },
                    future: getResiduos()),
              ),
              Row(children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Text('Total:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, color: Colors.lightGreen[900]))),
                Expanded(
                    child: Text(getN().toStringAsFixed(2),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20))),
                Expanded(
                    child: Text(getC().toStringAsFixed(2),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20))),
                Expanded(
                    child: Text(getH2O().toStringAsFixed(2),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20))),
              ]),
              Row(children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Text('C/N:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, color: Colors.lightGreen[900]))),
                Expanded(
                    child: Text(getCN().toStringAsFixed(2) + ' %',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20))),
              ]),
              Visibility(
                visible: (getCN() >= 25 && getCN() <= 35) ? false : true,
                child: Text(
                  '*El porcentaje de C/N deberá encontrarse en 25-35%',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Row(children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Text('Humedad:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, color: Colors.lightGreen[900]))),
                Expanded(
                    child: Text(getHumedad().toStringAsFixed(2) + ' %',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20))),
              ]),
              Visibility(
                visible: (getHumedad() >= 50) ? false : true,
                child: Text(
                  '*El porcentaje de Humedad deberá ser mayor de 50%.',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.green),
                      ),
                      child: Text('Anterior',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Visibility(
                      visible: ((getCN() >= 25 && getCN() <= 35) &&
                              getHumedad() >= 50)
                          ? true
                          : false,
                      child: RaisedButton(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.green),
                        ),
                        child: Text('Finalizar',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        onPressed: () {
                          CompostDao c = new CompostDao();
                          c.insert(data);
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/Home', (Route<dynamic> route) => false);
                        },
                      ),
                    )
                  ]),
            ])));
  }

  getN() {
    double total = 1;
    residuos.forEach((residuo) {
      total += (residuo.data['Peso'] * residuo.data['N']) / 100;
    });
    return total;
  }

  getPeso() {
    double total = 1;
    residuos.forEach((residuo) {
      total += residuo.data['Peso'];
    });
    return total;
  }

  getHumedad() {
    return (getPeso() / getH2O()) * 100;
  }

  getCN() {
    return (getC() / getH2O()) * 100;
  }

  getC() {
    double total = 0;
    residuos.forEach((residuo) {
      total += (residuo.data['Peso'] * residuo.data['C']) / 100;
    });
    return total;
  }

  getH2O() {
    double total = 0;
    residuos.forEach((residuo) {
      total += (residuo.data['Peso'] * residuo.data['H2O']) / 100;
    });
    return total;
  }
}
