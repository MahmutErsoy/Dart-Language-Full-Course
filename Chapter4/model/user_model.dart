
 // adi olmak zorunda
 // parasi olmak zorunda
 // yasini vermeyebilir
 // sehirini vermeyebilir
 // city yoksa ist ver
 // id degiskenine sadece bu sinif icinden erisebilsin yani private olsun

class User {
  // ozellikleri neler
  late final String name; // late kullanma sebebimiz bu deger constructor edildiginde dolacak demek
  late int money;
  late final int? age;
  late final String? city;

  late String userCode;

  late final String _id; //private yapmak istiyorsan alt tire kullan

  User(String name, int money, {required String id, int? age, String? city}) { //id datasi gelmek zorunda oldugu için required yazdım.
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;

    userCode = (city ?? 'ist') + name;
  }

  bool isSpecialUser(String id) {
    return _id == id; // _id private oludugu icin class.dart tan erisemedik o yuzden method ile erisiyorum
  }

  // id bos mu dolu mu diye bakar
  // bool isEmptyId() {           
  //   return _id.isEmpty;
  // }

  bool get isEmptyId => _id.isEmpty; //daha pratik yöntem
}