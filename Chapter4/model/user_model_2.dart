
class User2 {
  // ozellikleri neler
  final String name; 
  int _money;

  int get money => _money;

  set money(int money) {
    _money = money;
  }
  final int? age;
  final String? city;

  late String userCode;

  User2(this.name, this._money, {this.age, this.city}){
    userCode = (city ?? 'ist') + name;
  }
}

extension User2ControlExtension on User2 {
  void controlName() {
      print(name);
  }
}