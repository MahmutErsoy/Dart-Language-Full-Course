import 'model/product_config_model.dart';

void main(List<String> args) {
  final newProduct = Product.money;

  calculateMoney((Product.money ?? 0));

  productNameChange();

  calculateMoney((Product.money ?? 0));

  // user class ımı kullanarak product yapmak istiyorum

  final user1 = User('mahmut', 'aa');

  //final newProduct5 = Product(name: user1.product); // bu kullanım sıkıntılı bir kullanım

  final newProduct2 = Product(user1.product); // bu
  final newProduct3 = Product.fromUser(user1); // ve bu ayni isi farkli bakis acisi ile yapiyor

  productNameChange();

  // api key neydi acaba
  ProductConfig.instance.apiKey;
  ProductLazySingleton.instance;
}

void calculateMoney(int money) {
  if (money > 5) {
    print("5 tl daha ekledik");
    Product.money = Product.money! + 5; //5 tl ekler
    Product.incrementMoney(5); // 5 tl ekler
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
}

class Product {
  static int? money = 10;
  String name;

  /*Product({
    required this.name,
  });*/
  Product(this.name);

  Product.mahmut(
      [this.name =
          'mahmut']); // opsiyonel parametrenin 2. kullanımı. Suslu parantez olmadan default parametre atayabiliyoruz

  factory Product.fromUser(User user) {
    // constructor geriye deger dondurmedigi icin hata verir. hata vermemesi icin factory kullairiz.

    return Product(user.name);
  }
  static const companyName = "ME Bank";

  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
