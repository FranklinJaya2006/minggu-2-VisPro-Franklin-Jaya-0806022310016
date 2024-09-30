class hewan {
  void suara () {
    print("Hewan sedang makan");
  }

  void makan () {
    print("Hewan sedang makan");
  }
}

class anjing extends hewan {
  void suara () {
    print("Woof woof woof");
  }

  void makan () {
    print("Hewan anjing sedang makan ucing");
  }
}

class kucing extends hewan {
  void suara () {
    print("Meow meow meow");
  }

  void makan () {
    print("Hewan kucing sedang makan tikus");
  }
}