void main(List<String> args) {
  Map<String, dynamic> bicycle = {"type": "mountain", "numberOfGears": 21, "haveLight": true};

  for (var element in bicycle.entries) {
    print("${element.key} : ${element.value}");
  }
}
