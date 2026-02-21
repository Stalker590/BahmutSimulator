import 'Generals.dart';

class Country {
  String name;
  List<General> generals;
  String color;
  List<dynamic> units; 
  int money;
  int population;
  List<dynamic> AbleToCreating;
  int PoliticalPower;

  Country({
    required this.name,
    required this.generals,
    required this.color,
    required this.units,
    required this.money,
    required this.population,
    required this.AbleToCreating,
    required this.PoliticalPower
  });

  String About() {
    return "Country $name led by ${generals[0].name}, money: $money, population: $population";
  }
}
