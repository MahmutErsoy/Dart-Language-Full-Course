void main(List<String> args) {
  String? name;
  bool isNameAdmin = name.isAdmin();
  print('isNameAdmin: $isNameAdmin'); // false
}

// gelmezse bos kabul et
extension StringUserCheckExtension on String? {
  bool isAdmin() {
    return (this ?? '').toLowerCase() ==
        'admin'
            .toLowerCase(); // admin mi diye kontrol ediyor eger name null ise ''bos deger atayip kontrol ediyor. lowercase iki tarafi da kucuk harfe donusturur.
  }
}
