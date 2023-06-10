void main(List<String> args) {
  int number = 5;
  int factorial = 1;

  for (var i = 1; i <= number; i++) {
    factorial *= i;
  }
  print(factorial);
}
