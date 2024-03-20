
class Animal {
  int numberOfLegs;
  String taxonomy;
  
  Animal(this.numberOfLegs, [this.taxonomy = 'Cordados']){}
}

class Dog extends Animal {
  String? name;
  int? height;
  String? color;

  Dog({this.name, this.height, this.color}) : super(0){
  }
    // this function run went the cornstructor is being to call

  String? getName() {
    return this.name;
  }

  void display(){
    print({
      this.name,
      this.height,
      this.color,
      this.taxonomy,
      this.numberOfLegs
    });
  }
}

void main() {
  final champi = Dog(name: 'champi', height: 30, color: 'white');
  champi.display();
}

