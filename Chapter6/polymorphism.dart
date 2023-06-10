void main(List<String> args) {
  IUser user = Turk();
  user.sayName();

  user = English();
  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);

  void sayName();
}

class Turk implements IUser {
  @override
  String get name => 'mahmut';

  @override
  void sayName() {
    print("merhaba hosgeldiniz $name");
  }
}

class English implements IUser {
  @override
  String get name => 'Vardy';

  @override
  void sayName() {
    print("welcome $name");
  }
}
