import 'dart:io';
import 'Classes/Colors.dart';
import 'Classes/Enums/Types.dart';
import 'Classes/Country.dart';
import 'Classes/GameObject.dart';
import 'Classes/Generals.dart';
import 'Classes/GenerateMap.dart';
import 'Classes/printMap.dart';
import 'Classes/GenerateCountry.dart';
import 'Classes/UkrainianPack.dart';
import 'Classes/RussianPack.dart';

void main() {
  List<Country> countries = [];

  Country greenSide = Country(
    name: "Ukraine",
    generals: [General(name: "Alexander Bahmutov", age: 50, experience: 5)],
    color: AnsiColor.green,
    units: [],
    money: 1000,
    population: 5000,
    AbleToCreating: UkrainianSet,
  );
  Country redSide = Country(
    name: "Russia",
    generals: [General(name: "Vladimir Medvedev", age: 40, experience: 10)],
    color: AnsiColor.red,
    units: [],
    money: 800,
    population: 3000,
    AbleToCreating: RussianSet,
  );

  Country neutral = Country(
    name: "Emptiness territory",
    generals: [General(name: "Nature", age: 1488, experience: 1000)],
    color: AnsiColor.white,
    units: [],
    money: 0,
    population: 0,
    AbleToCreating: [],
  );

  List<List<GameObject>> worldMap = generateMap(
    sizeX: 15,
    sizeY: 10,
    neutral: neutral,
  );

  // Размещаем украинцев (РАЗНЫЕ координаты)
  List<GameObject> objects = [
    (UkrainianSet[0] as GameObject)
      ..side = greenSide
      ..x = 2
      ..y = 2,
    (UkrainianSet[1] as GameObject)
      ..side = greenSide
      ..x = 3
      ..y = 3,
    (UkrainianSet[2] as GameObject)
      ..side = greenSide
      ..x = 4
      ..y = 2,
    (RussianSet[0] as GameObject)
      ..side = redSide
      ..x = 10
      ..y = 2,
    (RussianSet[1] as GameObject)
      ..side = redSide
      ..x = 11
      ..y = 3,
    (RussianSet[2] as GameObject)
      ..side = redSide
      ..x = 12
      ..y = 2,
  ];

  // Добавляем в армии
  greenSide.units.addAll(objects.where((o) => o.side == greenSide));
  redSide.units.addAll(objects.where((o) => o.side == redSide));

  // ОДИН раз размещаем правильно
  for (var obj in objects) {
    if (obj.y < worldMap.length && obj.x < worldMap[0].length) {
      worldMap[obj.y][obj.x] = obj;
    }
  }

  print("╔════════════════════════════════════╗");
  print("║    BAHMUT SIMULATOR - MAP VIEW     ║");
  print("╚════════════════════════════════════╝\n");
  printMap(map: worldMap);

  // ПОСЛЕ карты - инфо о юнитах
  print("\n${AnsiColor.green}${greenSide.name}:${AnsiColor.reset}");
  for (var unit in greenSide.units) {
    print("  ${unit.model} ${unit.name} at (${unit.x}, ${unit.y})");
  }

  print("\n${AnsiColor.red}${redSide.name}:${AnsiColor.reset}");
  for (var unit in redSide.units) {
    print("  ${unit.model} ${unit.name} at (${unit.x}, ${unit.y})");
  }


}
