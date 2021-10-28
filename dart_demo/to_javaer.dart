class Bicycle {

  int cadence;

  // 库内只读变量
  int _speed = 0;

  int gear;

  Bicycle(this.cadence, {this.gear = 0});

  // 命名构造方法
  Bicycle.multi()
      : cadence = 2,
        gear = 1 {
    print('test');
  }

  int get speed => _speed;

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) => _speed += increment;

  @override
  String toString() => 'Bicycle: $speed! mph';
}

void main() {
  var stopWatch = Stopwatch();
  stopWatch.start();
  final bike = Bicycle(2, gear: 1);

  // 级联操作
  bike
    ..cadence = 1
    ..gear = 3;

  print(bike);

  print(DateTime.parse('2021-10-21'));
  stopWatch.stop();
  print(stopWatch.elapsed);
}

// null 判断s
int len(String? str) {
  return str?.length ?? 0;
}
