import 'model/user_model.dart';
import 'model/user_model_2.dart';

void main(List<String> args) {
  int?
      newMoney; // bu satırda newMoney degiskenine deger atamazsak hata alırız. Eger int yanina ? koyarsak degiskenin null olabilme ihtimali var deriz.
  print(newMoney);

  //print(newMoney + 10); yapamazsin cunku newMoney nin null olma ihtimali var. null ile bir sayi toplanmaz.
  // musteri diyorki eger null gelirse ana degeri 10 olarak dusun
  if (newMoney != null) {
    print(newMoney + 10);
  } else {
    print(10 + 10);
  }

  //bankaya 3 tane musteri gelir birinin 100 tl si var digerinin hesabi yok digerinin 0 tl si var
  //hesabi olmayana hesap ac, 0 tl si olani kov, 100 tl si olana hosgeldin yaz

  List<int?> customerMoneys = [100, null, 0];
  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print("Hosgeldiniz...");
      } else {
        print("Kovuldunuz");
      }
    } else {
      print("Hadi hesap acalim...");
    }
    // yeni bir method olsun. bu method ta hesabi olmayanlari ve parasi olmayanlari yok sayalim
    // para verdiklerimizi ekranda true yazalim

    bool result = controlMoney(item) == null ? false : true; // eger item null ise false dondur null degilse true dondur
    print(result);
  }

  print("----------------" * 3);

  User user1 = User('mahmut', 15, age: 21, city: 'aaa', id: '1');

  print(user1.name);

  // User user2 = User('mahmut2', 15, null, null); // kullanmak cok mantikli degil
  User user3 = User('mahmut3', 15, age: 13, id: '12'); // boyle
  final user4 = User('aa', 159, id: '123'); // ya da boyle bir kullanım daha dogru olur

  print(user3.userCode);

  // musteri son gelen kisinin sehirine gore kampanya yapacak eger sehiri istanbul ise

  if (user3.city == null) {
    print("musteri sehir bilgisini vermemis...");
  } else {
    if (user3.city == 'istanbul') {
      print("tebrikler kazandiniz");
    }
  }

  //musteri id si 12 olana indirim yap

  if (user3.isSpecialUser('12')) {
    user3.money += 5;
    print("indirim yapildi. para verildi.");
  }

  User2 newUser2 = User2('eymen', 15);
  newUser2.money += 5;
}

int? controlMoney(int? money) {
  if (money == null || money == 0) {
    return null;
  } else {
    return money;
  }
}
