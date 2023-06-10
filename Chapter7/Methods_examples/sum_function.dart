void main(List<String> args) {
  print(SumFunction(5));
}

int SumFunction(int num) {
  int sum = 0;
  for (var i = 1; i <= num; i++) {
    sum += i;
  }
  return sum;
}
