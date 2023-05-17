class Player {
  String name;
  int xp;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });
}

void main() {
  var ys = Player(name: 'nico', xp: 1200, team: 'red')
    ..name = 'ys'
    ..xp = 11
    ..team = 'Arsenal';
}
