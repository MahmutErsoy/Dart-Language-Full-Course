void main(List<String> args) {
  // musteri geldi adi ahmet parasi 20
  //Map<key, value>

  Map<String, int> users = {'ahmet': 20, 'mehmet': 30};

  //musteri ahmetin ne kadar parasi var

  print("ahmetin parasi ${users['ahmet']}");

  //musteri kimler var senin elinde

  for (var item in users.keys) {
    print("${item} - ${users[item]}");
  }

  for (var i = 0; i < users.length; i++) {
    print("${users.keys.elementAt(i)} - ${users.values.elementAt(i)}");
  }

  //ben bir bankayim. musterilerimin birden fazla hesabi olabilir
  //ahmet bey 3 hesabi var sirasiyla 100, 300, 200
  //mehmet bey 2 hesabi var 30, 50
  //veli bey 1 hesap 30
  //adamlarin hesaplarini kontrol et herhangi bir hesapta 150tl den fazla olan varsa krediniz hazir yaz

  print("--------------------");

  final Map<String, List<int>> meBank = {
    'ahmet': [100, 300, 200]
  };
  meBank['mehmet'] = [30, 50];
  meBank['veli'] = [30];

  for (var item in meBank.keys) {
    // bankanin tum elemanlari
    for (var money in meBank[item]!) {
      //userin hesaplarini dolasiyorum
      if (money > 150) {
        print("kredin hazir...");
        break;
      }
    }
  }

  // bankadaki musterileri hesaplarinin toplam meblasini merak ediyorum

  for (var name in meBank.keys) {
    //meBank[item]!-> musterinin hesaplari demek

    int result = 0;

    for (var money in meBank[name]!) {
      result += money;
    }
    print("$name senin toplam paran -> $result");
  }
}
