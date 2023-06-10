void main(List<String> args) {
  String userName = "Mahmut";

  var userName2 = "Mahmut2";
  var userName2Money = 15;

  userName2Money -= 10;

//Eger atadigimiz deger degistirilemesin istiyorsak final kullaniriz. Final degerini ekran geldiginde alabilir.
  final int bankMoney = 100;

//Eger atadigimiz deger degistirilemesin istiyorsak const kullaniriz. const degerini kod da alir ekrandan almaz.
  const String bankName = "ME Bank";

// -----
// Bank name = "EE BANK"
// bank user 1 = "bank1musteri"
// bank user 1 in parasi 100.00
// bank1 musteriye kimse dokunmaz!
// yeni bir musteri gelecek adi bank2musteri
// yeni bankaya gelenden bu bank user1 parasini cikartip ekrana gosterelim.

  const String bankNameSpecial = "EE Bank";

  const String user1 = "Bank 1 musteri";
  const double user1Money = 100.00;

  const String user2 = "Bank 2 musteri";
  int user2Money = 500;

  user2Money = user2Money - user1Money.toInt();

  print("User 2 money: $user2Money");

// Benim bir hali saham var 100 kisi kapasiteli
// saat 10'da 20 kisilik bir musteri1 mac yapicak ve 20 kesin kesin gelecek
// saat 10'da musteri2 gelip bana 50 kisilik yer ayriticak
// bu islem sonrasidna benim hali saha kapasitem kac kalmistir

  const String sahaName = "ME Saha";
  const int haliSahaKapasite = 100;

  const int musteri1 = 20;
  const int musteri2 = 50;

  int sum = musteri1 + musteri2;
  int kalanKapasite = haliSahaKapasite - sum;
  print("Kalan kapasite: $kalanKapasite");
}
