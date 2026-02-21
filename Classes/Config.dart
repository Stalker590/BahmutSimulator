import 'Country.dart';
import 'GameObject.dart';
import 'Generals.dart';


class GameConfig {
  String nameOfBattle;
  String description;
  List<List<GameObject>> worldMap;
  List<Country> countries;
  List<GameObject> objects;
  List<General> generals;
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
    required this.generals,
    this.currentTurn = 0,
    this.GameRunning = true,
  });
}