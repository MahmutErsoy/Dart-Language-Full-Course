void main(List<String> args) {
  int exam_grade1 = 50;
  int exam_grade2 = 84;

  double average = (exam_grade1 + exam_grade2) / 2;

  String? letter_grade;

  if (average >= 0 && average < 50) {
    letter_grade = "FF";
  } else if (average >= 50 && average < 60) {
    letter_grade = "CC";
  } else if (average >= 60 && average < 70) {
    letter_grade = "CB";
  } else if (average >= 70 && average < 80) {
    letter_grade = "BB";
  } else if (average >= 80 && average < 90) {
    letter_grade = "BA";
  } else if (average >= 90 && average <= 100) {
    letter_grade = "AA";
  } else {
    print("Please enter a correct value...");
  }

  if (letter_grade == null) {
    print("Could not calculate because correct value was not entered...");
  } else {
    print(letter_grade);
  }
}
