void main(List<String> args) {
  print(rectangularAreaFunction(6, 3));
  print(rectangularAreaFunction(6));
}

int rectangularAreaFunction(int longEdge, [int shortEdge = 5]) {
  int result = longEdge * shortEdge;
  return result;
}
