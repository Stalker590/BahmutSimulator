import 'Country.dart';
import 'GameObject.dart';


class GameConfig {
  String nameOfBattle;
  String description;
  List<List<GameObject>> worldMap;
  List<Country> countries;
  List<GameObject> objects;
  int TimeForTurn;
  int currentTurn;
  bool GameRunning;

  GameConfig({
    required this.nameOfBattle,
    required this.description,
    required this.worldMap,
    required this.countries,
    required this.objects,
    required this.TimeForTurn,
    this.currentTurn = 0,
    this.GameRunning = true,
  });
}