import 'package:tareas_1/ConexionDB.dart';

class Vehiculo {
  String modelo;
  int motor;
  int capacidad;

  /// Constructor por Nombre: Desde Motor
  Vehiculo.desdeMotor(this.modelo, this.motor);

  /// Constructor por Nombre: Con Capacidad
  Vehiculo.conCapacidad(this.modelo, this.capacidad);
}

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
