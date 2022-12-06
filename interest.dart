import "dart:math";
void main(List<String> args) {
 Animal animal = new Animal();
 Animal dog =Animal();
 Animal cat =Animal();

 dog.name = 'Bingo';
 dog.numberOfLegs = 4;
 dog.lifeSpan = 10;
 dog.display();

animal.animalNoise('dog');//like this because of the second line wasn't there.
cat.animalNoise("cat");

//Calcuate an area
 Area area = Area();
  area.breadth = 56;
  area.length = 134;
  print(area.calculateArea());

  //Simple Interest
  simpleInterest S_I = simpleInterest();
  S_I. principal = 30000;
  S_I.rate = 30.5;
  S_I.time = 24;
 print(S_I.calculateInterest());

 //calculate compund interest
 CInterestCalculator C_I = new CInterestCalculator(400000, 3.5, 5);
print("The compound interest is: ${C_I.calculateCInterest()}");

}
 class Animal{
    String? name;
    int? numberOfLegs;
    int? lifeSpan;

  void display(){
  print("Animal name: $name");
  print("Number of Legs: $numberOfLegs");
  print("Life span: $lifeSpan");
  }

  void animalNoise(String name){
    this.name = name;
   // name == 'dog'? print("A dog barks"):name == 'cat'? print("A cat meows"): print("A cow moos");
    switch (name) {
      case 'dog':
        print("A dog barks");
        break;
        case 'cat':
        print("A cat meows");
        break;
        case 'cow':
        print("A cow moos");
        break;
      default:print("I can not find your animal.");
      break;
    }
  }
  }
  class Area {
    double? length;
    double? breadth;

    double calculateArea(){
      return length! * breadth!;
    }
  }
 class simpleInterest{
  double? principal;
  int? time;
  double? rate;

  double calculateInterest(){ return (principal! * time! * rate!* 0.01);  }
 }

//Class for calculating compound interest
class CInterestCalculator{
  double? P;
  double? R;
  int? T;

  CInterestCalculator(this.P, this.R, this.T);

  double calculateCInterest(){
    double amount = P! * (pow((1 + R! / 100), T!));
    return amount - P!;
  }
} 