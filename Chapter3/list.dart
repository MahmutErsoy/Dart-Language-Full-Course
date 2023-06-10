void main(List<String> args) {
  
  // Bir bankaya on musteri gelir bunların 100 tl, 110 tl, ve 50 tl si vardır.

  final int money1 = 100;
  final int money2 = 110;

  //100 den buyuk olanlara hosgeldiniz beyefendi

  if (money1 > 100 || money2 > 100 ) {
    print("Hosgeldiniz Beyfendi...");
  }

  List<int> moneys = [100, 110, 500, 200, 300];
  final List<int> newMoneys = [100, 110, 500, 200, 300];

  print("Musteri 1 parasi: ${moneys[0]}");

  // parasi buyuk olana gore

  moneys.sort();
  moneys.add(15);
  moneys.insert(2, 300);
  moneys.insert(0, 5);
  print(moneys);

  newMoneys.add(5);
  newMoneys.clear();
  print(newMoneys);

  //100 tane musteri yap bunlarin hepsine sira ile numarasina gore 5 tl ekle

  List<double> customerMoney = List.generate(100, (index){
    return index + 5;
  });
  print(customerMoney);

  //customers 100 30 40 60
  // 35 tl den buyuk olanlari kredi verebiliriz yaz
  //kucuk olaranlara bye

  List<int> moneyCustomerNews = [100, 30, 40, 60];
  moneyCustomerNews.sort();
  for (int index = 0; index < moneyCustomerNews.length; index++) {
    print("musteri parasi: ${moneyCustomerNews[index]}");
    if (moneyCustomerNews[index] > 35) {
      print("kredi hazir");
    }else if (moneyCustomerNews[index] > 0) {
      print("kredi veremeyiz ama bir bakalim");
    }else {
      print("bye");
    }
  }
  print("---------");

  for (int index = moneyCustomerNews.length - 1; index >= 0; index--) {
    print("musteri parasi: ${moneyCustomerNews[index]}");
    if (moneyCustomerNews[index] > 35) {
      print('kredi hazir');
    } else if (moneyCustomerNews[index] > 0) {
      print('kredi veremeyiz ama bi bakalim');
    } else {
      print('by');
    }
  }

  List<String> userNames = ['ali', 'mehmet', 'ayse'];

  userNames.contains('veli');
  // veya
  for (var item in userNames ) {
    if (item == 'ali') {
      print("var");
    }
  }
}