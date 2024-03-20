class Person {
  // Properties
  String name;
  int age;

  Person({required this.name, required this.age});
}

class Doctor extends Person {
  // Properties
  List<String>? listofdegrees;
  String? hospitalname;

  Doctor({required super.age, required super.name, required this.listofdegrees, required this.hospitalname});
  // Method to display the values of the properties
  void display() {
    print("Name: ${name}");
    print("Age: ${age}");
    print("List of Degrees: ${listofdegrees}");
    print("Hospital Name: ${hospitalname}");
  }
}

class Specialist extends Doctor {
  // Properties
  String? specialization;

  Specialist({ required super.age, required super.name, required super.hospitalname, required super.listofdegrees, this.specialization});
  // Method to display the values of the properties

  void getInfo (){
    super.display();
    print(this.specialization);
  }
}


void main() {
  final drChampin = Specialist(age: 8, name: 'champin', hospitalname: 'HUDP', listofdegrees: ['champologo', 'calculador'], specialization: 'cardiologo de perros');

  drChampin.getInfo();
}
