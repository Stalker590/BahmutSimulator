import 'dart:io';
import 'GameObject.dart';

void printMap({required List<List<GameObject>> map}) {
  for (var row in map) {
    for (var cell in row) {
      cell.draw();
      stdout.write(" ");
    }
    print("");
  }
}
