// Encapsulation
class BankAccount {
  double _balance;
   
  BankAccount(this._balance);

  void deposit(double amount) {
    _balance += amount;
  }
   
  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print('Insufficient funds');
    }
  }

  double get balance => _balance;

  void _updateBalance(double amount) {
    _balance += amount;
  }
}

// INHERITANCE
class Animal {
  String name;

  Animal(this.name);
  
  void makeSound() {
    print('The animal makes a sound.');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  void fetch() {
    print('$name is fetching!');
  }
}

// POLYMORPHISM
class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('$name says Meow!');
  }
}

class Bird extends Animal {
  Bird(String name) : super(name);

  @override
  void makeSound() {
    print('$name says Chirp!');
  }
}
// Abstraction
abstract class Vehicle {
  // Abstract method
  void drive();

  // Abstract method
  void stop();
}

class Car extends Vehicle {
  @override
  void drive() {
    print('Car is driving');
  }

  @override
  void stop() {
    print('Car has stopped');
  }
}
class Bike extends Vehicle {
  @override
  void drive() {
    print('Bike is riding');
  }

  @override
  void stop() {
    print('Bike has stopped');
  }
}
