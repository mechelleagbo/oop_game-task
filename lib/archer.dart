import 'character.dart';

class Archer extends Character {
  int arrows;

  Archer(String name, int level, int health, this.arrows)
      : super(name, level, health) {
    if (arrows < 0) throw ArgumentError('arrows must be non-negative');
  }

  void shootArrow() {
    if (arrows <= 0) {
      print("$name has no arrows left!");
      return;
    }
    arrows--;
    print("$name shoots an arrow! Arrows left: $arrows");
  }

  @override
  String describe() {
    return "Archer ${super.describe()} | Arrows: $arrows";
  }
}
