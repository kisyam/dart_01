enum Team { arsenal, manUnited }

enum XPLevel { beginner, medium, pro }

class Player {
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
