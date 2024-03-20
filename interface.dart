// creating an interface using abstract class
abstract class Person {
  canWalk();
  canRun();
}

class Student implements Person {
  // implementation of canWalk()
  @override
  canWalk() {
    print('Student can walk');
  }

// implementation of canRun()
  @override
  canRun() {
    print('Student can run');
  }
}
