class ConexionDB {
  static ConexionDB _instancia;

  /// Constructor de Fábrica
  factory ConexionDB() {
    if (_instancia == null) {
      _instancia = ConexionDB._internal();
    }
    return _instancia;
  }

  ConexionDB._internal();
}
