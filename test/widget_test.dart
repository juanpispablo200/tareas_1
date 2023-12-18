// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

//import 'package:flutter/material.dart';
//import 'package:flutter_test/flutter_test.dart';
import 'package:tareas_1/ConexionDB.dart';

import 'package:tareas_1/main.dart';

void main() {
  var vehiculoMotor = Vehiculo.desdeMotor('Sedan', 2000);
  print(vehiculoMotor.modelo); // Salida esperada: Sedan
  print(vehiculoMotor.motor); // Salida esperada: 2000

  var vehiculoCapacidad = Vehiculo.conCapacidad('Camioneta', 5);
  print(vehiculoCapacidad.modelo); // Salida esperada: Camioneta
  print(vehiculoCapacidad.capacidad); // Salida esperada: 5

  var conexion1 = ConexionDB();
  var conexion2 = ConexionDB();

  print(identical(
      conexion1, conexion2)); // Salida esperada: true (misma instancia)
}
