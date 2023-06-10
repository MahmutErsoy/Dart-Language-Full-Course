void main(List<String> args) {
  
  final customerMouse = Mouses.a4;

  print(customerMouse.name);
  print(customerMouse.index);

  if (customerMouse == Mouses.a4) {}

  if (customerMouse.isCheckName('a4')) {
    print("aa");
  }
}

enum Mouses {
  magic,
  apple,
  logitech,
  a4
}

extension MouseSelectedExtension on Mouses {
  bool isCheckName(String name) {
    return this.name == name;
  }
}