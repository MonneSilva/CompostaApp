import 'package:composta_app/dataModel/composta/compost.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;

class Barras extends StatefulWidget {
  //final List<Values> dataList;
  //
  Barras(/*this.dataList*/) : super();

  @override
  ChartsDemoState createState() => ChartsDemoState();
}

class ChartsDemoState extends State<Barras> {
  //
  List<charts.Series> seriesList;

  static List<charts.Series<Values, String>> _createRandomData() {
    final random = Random();

    final valueList = [
      Values('200', random.nextInt(10)),
      Values('300', random.nextInt(10)),
      Values('400', random.nextInt(10)),
      Values('500', random.nextInt(10)),
      Values('600', random.nextInt(10)),
    ];

    return [
      charts.Series<Values, String>(
        id: 'Values',
        domainFn: (Values values, _) => values.date,
        measureFn: (Values values, _) => values.measure,
        data: valueList,
        fillColorFn: (Values values, _) {
          return charts.MaterialPalette.green.shadeDefault;
        },
      ),
    ];
  }

  barChart() {
    return charts.BarChart(
      seriesList,
      animate: true,
      vertical: true,
    );
  }

  @override
  void initState() {
    super.initState();
    seriesList = _createRandomData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: barChart(),
    );
  }
}

class Values {
  final String date;
  final int measure;

  Values(this.date, this.measure);
}
