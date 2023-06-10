void main(List<String> args) {
  int edge1 = 12;
  int edge2 = 12;
  int edge3 = 12;

  if (edge1 == edge2 && edge1 == edge3) {
    print("equilateral triangle");
  } else if (edge1 == edge2 || edge1 == edge3 || edge2 == edge3) {
    print("isosceles triangle");
  } else {
    print("scalene triangle");
  }
}
