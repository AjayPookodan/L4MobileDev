void main(){

  //creating a car object
  car c1 = car("Toyota", 20000);
  car c2 = car("Honda", 18000);

  //displaying car details
  print("Car name: ${c1.name}, Price: ${c1.price}");
  print("Car name: ${c2.name}, Price: ${c2.price}");

  //creating a person object
  person p1 = person("Ajay", 0, 50000);

  //before buying cars
  print("${p1.name} has ${p1.ownedCars} cars and ${p1.moneyLeft} money left before buying any cars.");
  
  //person buys a car
  p1.buyCar(c1);
  p1.buyCar(c2);

  //after buying cars
  print("${p1.name} has ${p1.ownedCars} cars and ${p1.moneyLeft} money left after buying two cars.");
  
  //person sells a car
  p1.sellCar(c1);

  //after selling a car
  print("${p1.name} has ${p1.ownedCars} cars and ${p1.moneyLeft} money left after selling one car.");
  
  //changing the price of a car
  c2.changePrice(22000);
  
  //displaying the updated price
  print("Updated price of ${c2.name} is ${c2.price}");


}

class car{ 

  //properties
  String? name;
  int? price;

  //constructor
  car(String name, int price){
    this.name = name;
    this.price = price;
  }

  //method to change the price of the car
   void changePrice(int newPrice) {
    this.price = newPrice;
  }
 
}

class person{

  //properties
  String? name;
  int? ownedCars;
  int? moneyLeft;

  //constructor
  person(String name, int ownedCars, int moneyLeft){
    this.name = name;
    this.ownedCars = ownedCars;
    this.moneyLeft = moneyLeft;
  }

  //method to buy and sell cars
  //buying a car
  void buyCar(car c1) {
    print("${this.name} bought a ${c1.name} for ${c1.price}");
    this.ownedCars = this.ownedCars! + 1;
    this.moneyLeft = this.moneyLeft! - c1.price!;
  }

  //selling a car
  void sellCar(car c1) {
    print("${this.name} sold a ${c1.name} for ${c1.price}");
    this.ownedCars = this.ownedCars! - 1;
    this.moneyLeft = this.moneyLeft! + c1.price!;
  }
  
}