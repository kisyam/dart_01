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

//* Mixin은 생성자가 없는 클래스이다. 클래스에 프로퍼티들을 추가할 때 유용하다.
//* extends가 아닌 with를 통해 Mixin의 프로퍼티들을 가져올 수 있다.
//* extend를 사용하여 상속받은 클래스는 자식 클래스, 상속한 클래스는 부모클래스가 되는 것이고,
//* 자식 클래스는 부모 클래스를 super 를 통해서 접근할 수 있다.
//! Mixin은 with라는 키워드를 통해서 단순히 Mixin 내부의 프로퍼티와 메소드에 접근하여 가져오는 것 뿐이다.
