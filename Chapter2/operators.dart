void main(List<String> args) {

  int money = 5;

  money = money + 1;

  money += 1;
  money++;
  money--;

  String name = "mahmut";
  String ersoy = "ersoy";

  print(name + ersoy);

  if (name == 'mahmut') {}
  if (name != 'mahmut') {}
  if (name.length > 'mahmut'.length) {}
  if (name.length < 'mahmut'.length) {}
  if (name.length <= 'mahmut'.length) {}
  if (name.length >= 'mahmut'.length) {}

  const int appleMoney = 20;
  const double disccount = 2.5;

  int myMoney = 30;

  myMoney = myMoney - (appleMoney ~/ disccount);
  print(myMoney);
  // 11 / 2 kalan kac? 1
  print(myMoney % 2 == 0);
  print(myMoney.isOdd);
}