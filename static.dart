// class ClassName {
//   static dataType variableName = value;
// for e.g
// static int num = 10;
// static String name = "Dart";
// }

//  The static method allow start a method without create a instance
class SimpleInterest {
  static double calculateInterest(double principal, double rate, double time) {
    return (principal * rate * time) / 100;
  }
}

void main() {
  print(
      "The simple interest is ${SimpleInterest.calculateInterest(1000, 2, 2)}");
}
