Future<void> main(List<String> args) async {
  print("a");
  // 2 sn bekle sonra digerini al
  //await Future.delayed(Duration(seconds: 2)); // yaparsak a ve ab yi yazdırır sonra 5 sn bekleyip biter. await ekleyince a yı yazıp 5 sn bekledi sonr ab yi yazdı.

  /* await Future.forEach([1, 2, 3, 4, 5, 6], (int element) async {
    await Future.delayed(Duration(seconds: 2));
    print("islem bitti $element");
  });*/
  print("ab");

  print("hello");
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print("hello2");
  });
  print("hello3");
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print("hello4");
  });
}
