import 'character.dart';

class Warrior extends Character {
  int strength;

  // Constructor with named parameters
  Warrior({
    required String name,
    required int level,
    required int health,
    required this.strength,
  }) : super(name: name, level: level, health: health) {
    if (strength < 0) {
      throw ArgumentError('Strength must be non-negative');
    }
  }

  // Warrior-specific method
  void attack({String? target}) {
    if (target != null) {
      print("$name strikes $target with strength $strength!");
    } else {
      print("$name swings a mighty blade with strength $strength!");
    }
  }

  // Override the describe method to include strength
  @override
  String describe() {
    return "🛡️ Warrior: ${super.describe()} | 💪 Strength: $strength";
  }

  @override
  String toString() => describe();
}
