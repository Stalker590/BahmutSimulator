import 'dart:io';
import 'Classes/Colors.dart';
import 'Classes/Enums/Types.dart';
import 'Classes/Country.dart';
import 'Classes/GameObject.dart';
import 'Classes/Generals.dart';
import 'Classes/GenerateGeneral.dart';
import 'Classes/GenerateMap.dart';
import 'Classes/printMap.dart';
import 'Classes/GenerateCountry.dart';
import 'Classes/UkrainianPack.dart';
import 'Classes/RussianPack.dart';
import 'Classes/Config.dart';

void main() {
  Country greenSide = Country(
    name: "Ukraine",
    generals: [],
    color: AnsiColor.green,
    units: [],
    money: 1000,
    population: 5000,
    AbleToCreating: UkrainianSet,
    PoliticalPower: 200
  );
  Country redSide = Country(
    name: "Russia",
    generals: [],
    color: AnsiColor.red,
    units: [],
    money: 800,
    population: 3000,
    AbleToCreating: RussianSet,
    PoliticalPower: 400
  );

  Country neutral = Country(
    name: "Emptiness territory",
    generals: [General(name: "Nature", age: 1488, experience: 1000)],
    color: AnsiColor.white,
    units: [],
    money: 0,
    population: 0,
    AbleToCreating: [],
    PoliticalPower: 0
  );

  List<List<GameObject>> worldMap = generateMap(
    sizeX: 60,
    sizeY: 30,
    neutral: neutral,
  );

  // Размещаем юнитов через каскад
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

  greenSide.units.addAll(objects.where((o) => o.side == greenSide));
  redSide.units.addAll(objects.where((o) => o.side == redSide));

  for (var obj in objects) {
    if (obj.y < worldMap.length && obj.x < worldMap[0].length) {
      worldMap[obj.y][obj.x] = obj;
    }
  }

  GameConfig game1 = GameConfig(
    nameOfBattle: "Битва под бахмутом",
    description:
        "Сражение между украинскими войсками и ЧВК Вагнер за контроль над Бахмутом.",
    worldMap: worldMap,
    countries: [greenSide, redSide, neutral],
    objects: objects,
    currentTurn: 0,
    GameRunning: true,
    generals: []
  );

  List<GameConfig> games = [game1];

  print("╔════════════════════════════════════╗");
  print("║    BAHMUT SIMULATOR - START UP     ║");
  print("╚════════════════════════════════════╝\n");

  General general = generateGeneral();
  print(general.About());

  print("К какой битве хотите перейти? (Введите номер)");
  for (int i = 0; i < games.length; i++) {
    print("${i + 1}. ${games[i].nameOfBattle}");
  }

  var choiceOfBattle = int.tryParse(stdin.readLineSync() ?? "1") ?? 1;
  var currentGame = games[choiceOfBattle - 1];

  print("К какой стороне хотите присоединиться? (Введите номер)");
  for (int i = 0; i < currentGame.countries.length; i++) {
    print("${i + 1}. ${currentGame.countries[i].name}");
  }

  var choiceOfSide = int.tryParse(stdin.readLineSync() ?? "1") ?? 1;
  currentGame.generals.add(general);

  print("\n>>> ИГРА НАЧИНАЕТСЯ ЧЕРЕЗ 3 СЕКУНДЫ <<<");
  sleep(Duration(seconds: 3));

  // ЦИКЛ ИГРЫ
  while (currentGame.GameRunning &&
    currentGame.generals.contains(general)) {
    stdout.write('\x1B[2J\x1B[H');

    currentGame.currentTurn++;

    print("=" * 60);
    print(
      "БИТВА: ${currentGame.nameOfBattle.toUpperCase()} | ХОД: ${currentGame.currentTurn}",
    );
    print(
      "ГЕНЕРАЛ: ${general.name} | СТОРОНА: ${currentGame.countries[choiceOfSide - 1].name}",
    );
    print("=" * 60);

    printMap(map: currentGame.worldMap);

    print("\n--- СВОДКА ПО СТРАНАМ ---");
    for (var country in currentGame.countries) {
      if (country.name == "Emptiness territory") continue;

      int income = (country.population / 100).floor();
      country.money += income;

      print(
        "${country.color}${country.name}${AnsiColor.reset}: \$${country.money} (+$income) | Юнитов: ${country.units.length}",
      );
    }

    if (greenSide.units.isEmpty || redSide.units.isEmpty) {
      currentGame.GameRunning = false;
      print("\n!!! БИТВА ЗАВЕРШЕНА !!!");
      break;
    }

  } 
}
