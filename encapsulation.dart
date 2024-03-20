class Employee {
  // Private property
  // the undercore is used to create _name
  var _name;

  // Getter method to access private property _name
  String getName() {
    return _name;
  }

  // Setter method to update private property _name
  void setName(String name) {
    this._name = name;
  }
}

// For create onlyRead property use the Final to declarate the var
class Student {
  final _schoolname = 'ABC SCHOOL';

  String getSchoolName(){
    return _schoolname;
  }
}

void main() {
  Employee employee = Employee();
  employee._name = "John"; // It is working, but why?
  print(employee.getName());

  Student student = Student(); 
  print(student.getSchoolName());
}