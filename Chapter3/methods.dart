void main(List<String> args) {
  // benim bir musterim var parasi var mi yok mu kontrol eder misin

  final int userMoney = 0;
  controlUserMoney(userMoney, 0);

  final int user2Money = 5;
  controlUserMoney(user2Money, 2);

  //yeni musteri gelir parasi 50 tl
  // parasini dolar yapmak istiyor ve kac dolar yaptgini merak ediyor

  final newUserMoney = 50;
  int result = convertToDolar(newUserMoney);
  print(result);

  // bana bir dolar hesaplama yapp eger ben sana soyelmezsem yeni bir durum var diye her zaman 13 al
  final newResult = convertToStandartDolar(100, dolarIndex: 13);
  final newResult2 = convertToStandartDolar(100);
  final newREsult3 = convertToEuro(userMoney: 500);
  sayHello('aa');
}

void controlUserMoney(int money, int minumumValue) {
  if (money > minumumValue) {
    print("para var");
  } else {
    print("para yok");
  }
}

int convertToDolar(int userMoney) {
  return userMoney ~/ 13;
}

int convertToStandartDolar(int userMoney, {int dolarIndex = 13}) {
  return userMoney ~/ dolarIndex;
}

int convertToEuro({required int userMoney, int dolarIndex = 13}) {
  return userMoney ~/ dolarIndex;
}

String sayHello(String name) {
  return 'hello $name';
}
