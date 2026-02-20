import 'Generals.dart';
import 'dart:io';

General generateGeneral(){
  print("Enter general's name:");
  var name = stdin.readLineSync()!;
  print("Enter general's age:");
  var age = int.parse(stdin.readLineSync()!);
  print("Enter general's experience:");
  var experience = num.parse(stdin.readLineSync()!);

  return General(name: name, age: age, experience: experience);
}