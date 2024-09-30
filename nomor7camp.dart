class Vehicle {
  String _name;
  double _speed;

  Vehicle(this._name, this._speed);

  String get name => _name;
  set name(String value) => _name = value;

  double get speed => _speed;
  set speed(double value) => _speed = value;

  String speedCategory() {
    if (_speed < 30) {
      return "si el slow";
    } else if (_speed >= 30 && _speed <= 60) {
      return "si el normal";
    } else {
      return "si el kecepatan";
    }
  }
}

class Car extends Vehicle {
  Car(String name, double speed) : super(name, speed);
}

class Bike extends Vehicle {
  Bike(String name, double speed) : super(name, speed);
}
