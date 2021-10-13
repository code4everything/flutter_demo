class Bicycle {
  int cadence;

  // 库内只读变量
  int _speed = 0;

  int gear;

  Bicycle(this.cadence, {this.gear = 0});

  int get speed => _speed;

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) => _speed += increment;

  @override
  String toString() => 'Bicycle: $speed mph';
}

void main() {
  final bike = Bicycle(2, gear: 1);
  print(bike);
}
