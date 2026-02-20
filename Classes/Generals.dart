class General {
  String name;
  int age;
  num experience;
  General({
    required this.name,
    required this.age,
    required this.experience,
  });

  String About() {
    return "General $name, age: $age, rank: $experience";
  }
}