// Mixins are a way of reusing the code in multiple classes. Mixins are declared using the keyword mixin followed by the mixin name. Three keywords are used while working with mixins: mixin, with, and on. It is possible to use multiple mixins in a class.

// In this example below, there is abstract class named Animal with properties name and speed. The Animal class has an abstract method run(). The CanRun mixin is only used by class that extends Animal. The Dog class extends the Animal class and uses the CanRun mixin. The Bird class cannot use the CanRun mixin because it does not extend the Animal class.

abstract class Animal {
  // properties
  String name;
  double speed;

  // constructor
  Animal(this.name, this.speed);

  // abstract method
  void run();
}

// mixin CanRun is only used by class that extends Animal
mixin CanRun on Animal {
  // implementation of abstract method
  @override
  void run() => print('$name is Running at speed $speed');
}

class Dog extends Animal with CanRun {
  // constructor
  Dog(String name, double speed) : super(name, speed);
}

void main() {
  var dog = Dog('My Dog', 25);
  dog.run();
}

// Not Possible
// class Bird with Animal { } 

// lo que permite los mixin es estraer los metodos de una clase y reutilizarlo en muchas clases al mismo tiempo
// sin tener que hacer una clase padre que herede el method

