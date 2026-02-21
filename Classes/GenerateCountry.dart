import 'Country.dart';
import 'GenerateGeneral.dart';
import 'dart:io';
import 'Generals.dart';

Country generateCountry() {
  try {
    stdout.write("Enter country name: ");
    var name = stdin.readLineSync() ?? "Unknown";

    stdout.write("Enter country color (red/green/blue/yellow): ");
    var color = stdin.readLineSync() ?? "#FFFFFF";

    stdout.write("Enter money: ");
    var money = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

    stdout.write("Enter population: ");
    var population = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

    stdout.write("How many generals? ");
    var generalCount = int.tryParse(stdin.readLineSync() ?? "1") ?? 1;

    List<General> generals = [];
    for (int i = 0; i < generalCount; i++) {
      print("\nGeneral #${i + 1}:");
      generals.add(generateGeneral());
    }

    stdout.write("How much political power you want?");
    var politicalPower = int.tryParse(stdin.readLineSync() ?? "100") ?? 1;

    return Country(
      name: name,
      generals: generals,
      color: color,
      units: [],
      money: money,
      population: population,
      AbleToCreating: [],
      PoliticalPower: politicalPower
    );
  } catch (e) {
    print("❌ Error creating country: $e");
    rethrow;
  }
}
