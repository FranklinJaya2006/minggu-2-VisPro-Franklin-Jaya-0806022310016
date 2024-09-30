class TemperatureConverter {
  double _celsius = 0.0;

  double get celsius => _celsius;

  set celsius(double value) {
    _celsius = value;
  }

  double cTReaumur() {
    return _celsius * 0.8;
  }

  double cTFahrenheit() {
    return (_celsius * 9 / 5) + 32;
  }

  double cTKelvin() {
    return _celsius + 273.15;
  }
}
