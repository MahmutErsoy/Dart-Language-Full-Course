import '../Chapter4/class_extends.dart';

void main(List<String> args) {
  //benim bir arabalar sinifim olacak
  // arabalarin modeli(bmw,yamaha,toyota), ismi, parasi kesin olacak sehri olmayabilir,
  // ikinci el durumu eger musteri soylemezse her urun ikinci el kabul edilecek
  // benim 5 tane arabam olacak

  final model = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 1412, isSecondHand: false);

  final carItems = [
    CarModel(category: CarModels.bmw, name: 'bmw x5', money: 14, isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'toyota 234234', money: 45),
    CarModel(category: CarModels.yamaha, name: 'ymaaha 3324', money: 44, isSecondHand: false),
    CarModel(category: CarModels.bmw, name: 'bmw x5', money: 33),
    CarModel(category: CarModels.toyota, name: 'toyota 0ye', money: 55, isSecondHand: false),
  ];

  // benim bu arabalarimin kac tanesi ikinci el

  final resultCount = carItems
      .where((element) => element.isSecondHand == true)
      .length; // any icinde var mı diye bakar. kac tane var dedigi icin where
  print(resultCount);

  //yeni bir araba geldi bu bizde var gibi hissediyorum dogru mu?

  final newCar = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 33);

  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print("elimizde var");
  } else {
    print("patron alalim");
  }

  // bana bmw olan ve money si 20 den buyuk arabalarimizin ismini soyler misin?

  final resultBmwMore20 = carItems.where((element) => element.category == CarModels.bmw && element.money > 20).join();

  print(resultBmwMore20);

  // sadece isimleri yan yana gosterir misin?

  final carNames = carItems.map((e) => e.name).join(","); // map yapmak bundan yeni bir nesne yapmak.

  print(carNames);

  // benim elimde mercedes var mi?

  /*final mercedesCar = carItems.singleWhere((element) => element.category == CarModels.mercedes);
  print(mercedesCar); */ // yazarsak hata aliriz cunku singlewhere yazinca data yi bulamazsa hata verir. Singlewhere kullanacaksan try catch kullan.

  try {
    final mercedesCar = carItems
        .singleWhere((element) => element.category == CarModels.mercedes); // null gelme ihtimali varsa try icine al.
    print(mercedesCar.name);
  } catch (e) {
    print("araba yok"); // catch icinde cok fazla islem yapilmaz. catch amaci sana hatayi soylemek
  } finally {
    print("abi yeter"); // finally her turlu senoryada calisir
  }

  // yeni gelen arabaya var dedin kacinci sirada soylesene

  final index = carItems.indexOf(newCar);
  print(index);

  // yeni mercedes aldim ekler misin?

  final _mercedes = CarModel(category: CarModels.mercedes, name: 'merer', money: 12312);
  carItems.add(_mercedes);

  // bana arabalarimi kucukten buyuge dogru siralar misin?

  carItems.sort((first, second) => first.money.compareTo(second.money));
  print(carItems);

  //ben butun arabalarimi user yapıcam

  final users = carItems.expand((element) => element.users).toList();

  //ya bu son ekleneni silelim
  //bmw olan ve 30 dan dusuk olanlari silelim

  carItems.remove(_mercedes);
  carItems.removeWhere((element) => element.category == CarModels.bmw || element.money < 30);
  print(carItems);
}

class CarModel {
  final CarModels category;
  final String name;
  final double money;

  List<User> users;

  String? city;
  bool isSecondHand;
  CarModel(
      {required this.category, //ilk 3 ü kesin istiyorum
      required this.name,
      required this.money,
      this.city, // vermesende olur
      this.isSecondHand = true, //vermesende olur ama vermezsen true kabul ediyorum
      this.users = const []});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^ name.hashCode ^ money.hashCode ^ city.hashCode ^ isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels { bmw, yamaha, toyota, mercedes }
