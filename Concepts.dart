//  Vehicle class
class Vehicle {
  String make;
  String model;
  int year;

  Vehicle(this.make, this.model, this.year);

  void drive() {
    print("Vehicle is being Driven...");
  }

  void displayInfo() {
    print(" Make: $make\n Model: $model\n Year: $year");
  }
}

// Car inheriting from Vehicle
class Car extends Vehicle {
  int mileage;

  Car(String make, String model, int year, this.mileage)
      : super(make, model, year);

//  Override displayInfo method
  @override
  void displayInfo() {
    super.displayInfo();
    print(" Mileage: $mileage Kmpl");
  }
}

void main() {
  Vehicle vehicle = Vehicle("Porsche", "Spyder", 2022);
  vehicle.drive();
  vehicle.displayInfo();

  Car car = Car("Lamborghini", "Revuelto", 2023, 10);
  car.drive();
  car.displayInfo();
}
//    ______________________________________________________________    //