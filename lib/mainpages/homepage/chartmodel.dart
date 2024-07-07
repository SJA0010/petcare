import 'package:flutter/animation.dart';
import 'package:charts_flutter/flutter.dart ' as charts;

class Barchartmodel {
  String? Weight;
  String? heratbeat;
  int? temprature;
  String? Pressure;
  final charts.Color color;

  Barchartmodel(
      {required this.Weight,
      required this.heratbeat,
      required this.temprature,
      required this.Pressure,
      required this.color});
}
