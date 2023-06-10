import 'dart:math';

void main(List<String> args) {
  List<int> Num = List.filled(10, 0);
  for (var i = 0; i < Num.length; i++) {
    Num[i] = Random().nextInt(10);
  }
  print(Num);
}
