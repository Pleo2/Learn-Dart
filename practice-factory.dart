// Add a factory constructor to Bottle and return the object of CokeBottle. Instantiate CokeBottle using the factory constructor and call the open() on the object.

abstract class Bottle {
  void open();
  factory Bottle(){
    return CokeBottle();
  }
}

class CokeBottle implements Bottle {
  @override
  void open() {
    print('Coke bottle is opened'); 
  }
}

Bottle createBottle(){
    return CokeBottle();
}

void main(){
  Bottle cokeBottle = createBottle();
  cokeBottle.open();
}