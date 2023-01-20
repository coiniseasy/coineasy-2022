class Strong {
  final double strengthLevel = 1500.99;
}

class Quickrunner {
  void runQuick() {
    print('runnnnn');
  }
}

class Tall {
  final double height = 1.99;
}

enum Team { blue, red }

class Player with Strong, Quickrunner, Tall {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name);

  @override
  void sayHello() {
    super.sayHello();
    print('and I play for ${team}');
  }
}

class Hourse with Strong, Quickrunner {}

class Kid with Quickrunner {}

void main() {
  var player = Player(
    team: Team.red,
    name: 'nico',
  );
  player.runQuick();
}
