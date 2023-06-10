void main(List<String> args) {
  print(evenNumberSumFunction(5));
}

int evenNumberSumFunction(int num) {
  int sum = 0;
  for (var i = 0; i <= num; i += 2) {
    sum += i;
  }
  return sum;
}
