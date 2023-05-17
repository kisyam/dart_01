class Strong {
  final double strengthLevel = 1599.1;
}

class QuickRunner {
  void runQuick() {
    print("ruuuuuun");
  }
}

class Tall {
  final double height = 1.99;
}

enum Team { abc, def }

class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  });
}

class Horse with Strong, QuickRunner {}

void main() {
  var player = Player(team: Team.def);
  player.runQuick();
  print(player.strengthLevel);
}

//* extend를 하게 되면 확장한 그 클래스는 부모 클래스가 되는거고, 자식 클래스는 부모 클래스를 super를 통해서 접근할 수 있고
//* 그 순간 부모 클래스의 인스턴스가 된다.
//* Mixin은 with라는 키워드를 사용해서 역할은 단순히 Mixin 내부의 프로퍼티와 메소드들을 가져오는 것 뿐이다.
//! 부모 클래스가 되거나 하지 않고 뺏어오는 거라고 인식하면 된다.
//! Mixin의 조건은 생성자가 없는 클래스여야 한다.
