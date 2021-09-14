class SingletonOne {
  SingletonOne._privateConstructor();

  static SingletonOne _instance;

  ///Factory constructor
  factory SingletonOne() {
    if (_instance == null) {
      _instance = SingletonOne._privateConstructor();
    }
    return _instance;
  }

  static void clean() {
    _instance = null;
  }

  void execute() {}
}

class SingletonTwo {
  SingletonTwo._privateConstructor();

  static SingletonTwo _instance;

  ///Static field with getter
  static SingletonTwo get instance {
    if (_instance == null) {
      _instance = SingletonTwo._privateConstructor();
    }
    return _instance;
  }

  static void clean() {
    _instance = null;
  }

  void execute() {}
}
