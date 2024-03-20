// getter 
/* 
return_type get property_name {
  Getter body
}
*/

class Person {
  String? firstName;
  String? lastName;
  String? _nickname;
  
  Person(this.firstName, this.lastName);
  
  String get fullName => "$firstName $lastName";
  Map<String, dynamic> get map{
    return {"name": firstName, "age": lastName, "apodo": _nickname};
  }
  String get apodo => "$_nickname";
  set apodo(String apodo) => this._nickname = apodo;
}

void main(){
  Person piolina = Person('piolina', 'cedenno');
  print(piolina.apodo);
  print(piolina.fullName);
  piolina.apodo = 'piolinilla';
  print(piolina.map);
}