class Character {
  String name;
  int level;
  int _health;
  int maxHealth;

  Character(this.name, this.level, int health)
      : _health = health,
        maxHealth = health {
    if (level <= 0) {
      throw ArgumentError('Level must be at least 1');
    }
    if (health <= 0) {
      throw ArgumentError('Health must be positive');
    }
  }

// Getter for health (encapsulation)
  int get health => _health;

// Setter with validation: keeps health between 0 and maxHealth
  set health(int value) {
    if (value <= 0) {
      _health = 0;
    } else if (value > maxHealth) {
      _health = maxHealth;
    } else {
      _health = value;
    }
  }

  void takeDamage(int damage) {
    if (damage <= 0) {
      print("$name ignores weak damage.");
      return;
    }
    health -= damage; // uses setter validation
    print("$name takes $damage damage! Health: $health/$maxHealth");
  }

  void heal(int amount) {
    if (amount <= 0) {
      print("Heal amount must be positive.");
      return;
    }
    health += amount; // uses setter
    print("$name heals for $amount. Health: $health/$maxHealth");
  }

  String describe() {
    return "$name (Level $level) - Health: $health/$maxHealth";
  }
}
