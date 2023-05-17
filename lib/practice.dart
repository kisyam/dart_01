//* Abstract class
abstract class Human {
  void walk();
}

abstract class Alien {
  void fly();
}

enum Team { arsenal, manUnited }

enum XPLevel { beginner, medium, pro }

class Player extends Human {
  String name;
  XPLevel xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("say Hello");
  }

  @override
  void walk() {
    print("walking");
  }
}

class Coach extends Human {
  @override
  void walk() {
    print('the coach is walking');
  }
}

class Child extends Alien {
  @override
  void fly() {
    // TODO: implement walk
  }
}

//* Cascade Notation
void main() {
  var ys = Player(name: 'nico', xp: XPLevel.pro, team: Team.arsenal);
  var hi = ys
    ..name = 'ys'
    ..xp = XPLevel.medium
    ..team = Team.manUnited
    ..sayHello();
}
