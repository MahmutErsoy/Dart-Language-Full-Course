void main(List<String> args) {
  //musterinin adini tut
  //musterinin parasini ogren
  //musteriye merhaba diyip parasini söyle
  //bizim bankaya geldiği için parasina +5tl ekle

  int userMoney = 25;
  String userName = "Mahmut";

  userMoney = userMoney + 5;

  print("Merhaba $userName $userMoney");
  print("-----------");

  userMoney -= 10;

  print("Paraniz deger kaybetti $userMoney");

  userMoney += 5;

  //int i bölünce tam sayi cikmiyorsa ~ isaretini kullaniriz
  userMoney = userMoney ~/ 2;

  double eymenMoney = 14.2;
  eymenMoney /= 2;

  print("Eymen bey paraniz uctu $eymenMoney");
  print("Mahmut bey paraniz uctu $userMoney");
}
