void main(List<String> args) {
  final int classDegree = 2;
  bool isSuccess = false;

  // ornek
  // 2 ise ekrana bravo
  // 1 ise olur
  // 0 ise yeterli
  // diger durumlarda basarisiz yazdir.

  switch (classDegree) {
    case 2:
      print("Bravo...");
      isSuccess = true;
      break;
    case 1:
      print("Olur...");
      isSuccess = true;
      break;
    case 0:
      print("Yeterli...");
      isSuccess = true;
      break;
    default:
      print("Basarisiz...");
      isSuccess = false;
  }
  print('beyfendi cocugunuzun sonucu: $isSuccess');

  //ornek
  // magazaya gelen isimlerden mahmut veya ekin olan olursa print bravoo yaz

  String name = "eymen";

  const String specialUser1 = "mahmut";
  const String specialUser2 = "ekin";

  switch (name) {
    case specialUser1:
    case specialUser2:
      print('bravo');
      break;
    default:
      print('sorunlu');
  }
}
