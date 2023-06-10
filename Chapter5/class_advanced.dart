void main(List<String> args) {
  final user = _User('mahmut', age: 21);

  // musterinin yasi 18 den kucuk kontrolu yapar misin

  // if ((user.age ?? 0) < 18 ) {}  //user.age null olma ihtimali oldugu icin ?? ile eger null ise 0 ata diyebiliriz.

  if (user.age is int) {
    // burada user.age bir sayi mi diye kontol ediyoruz. Sayi ise kosulun icine girecek.
    if (user.age! < 18) {
      // user.age null olabilecegi icin kucuktur sorgulamasi yaptirmiyor fakat biz ustte int mi diye baktigimiz icin null olma ihtimali yok.
      // bu yüzden user.age in yanina ! koyarak sorunu cozuyoruz. bu ! anlami user.age null gelmeyecek demek.
      //yukaridaki gibi kontrol sonrasi kullanmamiz lazım direk ! kullanirsak kod hata verir.
      print("evet kucuk");
      user.updateMoneyWithString("TR");
    } else {
      user.updateMoneyWithNumber(21);
    }
  }

  // kullanicilarimin parasi var ama tipi degisken olabilir
  // parasi olan adamin parametresi bir isimde olabilir veya deger olabilir
  // tr yazacak ya da orada 15 yazabilir
  // ekranda goster

  // final _newType = (user.moneyType as String);
  // print((user.moneyType as String) + "A"); // moneytype number gelirse patlar.
  //as String kullanarak her türlü value yu alacak ve moneytype ı string e cast edicek ve sonucu ekranda gosterecek
  //fakat bu dogru yontem degil cunku eger age e 18den buyuk deger verirsek hata alırız.
  final _newType = user.moneyType is String ? (user.moneyType as String) : "";
  print(_newType + "A"); // kullanımı daha dogru olacaktir.
  // Kod yazarken cok fazla dynamic kullanmamamız lazim. cunku kodu okuyan baska biri anlamaz.

  int money1 = 50;
  int money2 = 50;

  if (money1 == money2) {
    print("ok"); // ok yazısını gorurum cunku bunlar deger tipleri
  }

  final moneyBank1 = Bank(40, '12');
  final moneyBank2 = Bank(30, '12');

  print(moneyBank1 ==
      moneyBank2); //false donme sebebi: class lar referans tipidir.referans tipleri de kendi icinde bellekte bir yer tutar.
  // bundan dolayi karsilastirma yapinca once value bakmiyor referanslar ayni referans mi diye bakiyor.

  //  banka sinifindan iki kisinin parasini toplayip sonucu soyler misin

  print(moneyBank1 + moneyBank2);

  // bankama gelen musterilerin id si ayni olanlar ayni musteri olmalidir

  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);

  // diger bankadan bir modul aldık bunu ekleyip musterinin parasini sorgularmısın

  // musterinin parasina 10 tl ekle ekrana dondur, adamin id sini 1 arttir sonrasinda ismini mahmut yap

  moneyBank1
    ..money += 10 //cascade notation yazım
    ..updateName('mahmut');

  print(moneyBank1);
}

class _User {
  final String name;
  int? age;

  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    // Custom operator yazdık. print(moneyBank1 + moneyBank2); bunun için yazdık.
    return this.money + newBank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  @override
  String toString() {
    return super.toString() + 'mahmut';
  }

  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

mixin BankMixin {
  void sayBankHello();

  void calculateMoney(int money) {
    print('money');
  }
}
