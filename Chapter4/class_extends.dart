void main(List<String> args) {
  final userNormal = User('mahmut', 15);
  final usersBank = bankUser('eymen', 155, 123);
  final userSpecial = specialUser('murat', 12312, 123123, 30);

  userNormal.sayMoneyWithCompanyName();
  usersBank.sayMoneyWithCompanyName();
  userSpecial.sayMoneyWithCompanyName();

  print(userSpecial.calculateMoney());
  print(userSpecial.money);
}
// paralarini gorebilmelerin istiyorum benim banka ismimle birlikte

abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompanyName() {
    print("$name - $money paraniz vardir");
  }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money) : super(name, money);
}

class bankUser extends IUser {
  final int bankingCode;

  bankUser(String name, int money, this.bankingCode) : super(name, money);

  void bankSpecialLogic() {
    print(money);
  }
}

class specialUser extends IUser {
  final String name;
  final int money;
  final int bankingCode;
  late final int _discount;

  specialUser(this.name, this.money, this.bankingCode, int discount) : super(name, money) {
    _discount = discount;
  }

  //indirimli fiyatim ne kadar
  int calculateMoney() {
    return money - (money ~/ _discount);
  }
}
