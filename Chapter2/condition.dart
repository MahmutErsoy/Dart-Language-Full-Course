void main(List<String> args) {
  int money = 50;
  String userName = "Mahmut";

  if (money > 10) {
    print("Paraniz varmis...");
  } else {
    print("Hic paraniz yokmus...");
  }
  money -= 10;

  if (money > 10) {
    print("Cidden paraniz var...");
  } else {
    print("Harcama yapinca paraniz hemen azaldi...");
  }

  // Ornek
  // musteri bankaya gelir ve 10 tlsi vardir ve bir sorgu yapar
  // sorgu sonucu 20tl si alinacak fakat eger parasi soruguya yeterli ise
  // eger kalan parasi sifirdan kucukse bankadan kovulur
  // eger diyor adamin parasi banking costa yetmiyorsa bankaya almayin

  int newCustomerMoney = 0;
  const int bankingCost = 5;
  const int bankingCostGeneral = 20;

  if (newCustomerMoney > bankingCost) {
    print('hosglediniz beyfendi');
    newCustomerMoney = newCustomerMoney - bankingCostGeneral;
  } else if (newCustomerMoney > 0) {
    print('beyfendi lutfen sira alinirz');
  } else {
    print('beyfendi kredinizi odeyin');
  }

  //Ornek
  // bir magazaya isim verilecek
  // ornek isimler toplanir
  // ornek isimler: ahmet, mehmet mahmut, eymen, ata
  // magaza derki ben sadece karakter uzunlugu iki veya daha alti olanlari gormek istiyorum
  // bu kosula uyanlari yan yana gormek istiyorum aralinda bosluk olacak

  final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "Mehmet";
  final String mahmutCompany = "Mahmut";
  final String eymenCompany = "Eymen";
  final String ataCompany = "Ata";

  const int companyLenght = 2;
  String results = "";

  if (ahmetCompany.length <= companyLenght) {
    results += ahmetCompany;
  }
  if (mehmetCompany.length <= companyLenght) {
    results += mehmetCompany;
  }
  if (mahmutCompany.length <= companyLenght) {
    results += mahmutCompany;
  }
  if (eymenCompany.length <= companyLenght) {
    results += eymenCompany;
  }
  if (ataCompany.length <= companyLenght) {
    results += ataCompany;
  }

  if (results.isEmpty) {
    print('patron bulamadik');
  } else {
    print(results);
  }
}
