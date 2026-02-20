import 'Country.dart';
import 'GameObject.dart';

class GameConfig {
  int mapSizeX;
  int mapSizeY;
  List<Country> countries = [];
  List<GameObject> objects = [];


  GameConfig({
    required this.mapSizeX,
    required this.mapSizeY,
  });
}