import 'Enums/Types.dart';
import 'Colors.dart';
import 'dart:io';
import 'Country.dart';

class GameObject {
  // Базовая инфа
  String name;
  String description;
  int x;
  int y;
  UnitType type;
  Country? side;

  // Состояние существования
  bool isControlled;
  bool isAlive;
  bool isVisible; // Туман войны
  bool isEntrenched; // Окопался или нет

  // Основные статы (Здоровье и Дух)
  num health;
  num maxHealth;
  num organization; // Как в HOI4, падает в бою
  num maxOrganization;
  num morale; // Скорость восстановления организации
  num stamina; // Выносливость для марш-бросков

  // Боевые параметры
  num softAttack; // Против пехоты
  num hardAttack; // Против танков
  num airAttack; // ПВО
  num navalAttack; // Против кораблей
  num defense; // Защита в статике
  num breakthrough; // Прорыв при атаке
  num armor; // Толщина брони
  num piercing; // Пробитие брони
  num reliability; // Шанс поломки
  num suppression; // Подавление сопротивления
  num hardness; // Процент бронированности цели

  // Логистика и маневры
  num speed; // Скорость по клеткам
  num weight; // Вес (влияет на перевозку)
  num fuelCapacity; // Бак
  num fuelConsumption; // Жор топлива
  num foodConsumption; // Жор провизии
  num ammoConsumption; // Расход БК в бою
  num supplyWeight; // Нагрузка на линии снабжения
  num range; // Дальность хода
  num visionRange; // Дальность обзора
  num radioRange; // Дистанция связи

  // Экономика и производство
  num buildCostMoney; // Цена в валюте
  num buildCostTime; // Дней на постройку
  num manpowerCost; // Сколько людей требует юнит
  num maintenanceCost; // Цена содержания в день

  // Ресурсы
  num ironProduction;
  num oilProduction;
  num foodProduction;
  num rubberProduction;
  num aluminumProduction;
  num steelProduction;
  num moneyProduction;

  // Опыт и прогресс
  num experience;
  num level;
  num combatWidth; // Ширина фронта

  // Эффекты местности
  num forestPenalty;
  num marshPenalty;
  num mountainBonus;

  GameObject({
    required this.name,
    required this.description,
    required this.x,
    required this.y,
    required this.type,
    required this.side,
    this.isControlled = true,
    this.isAlive = true,
    this.isVisible = true,
    this.isEntrenched = false,
    this.health = 100,
    this.maxHealth = 100,
    this.organization = 100,
    this.maxOrganization = 100,
    this.morale = 1.0,
    this.stamina = 100,
    this.softAttack = 0,
    this.hardAttack = 0,
    this.airAttack = 0,
    this.navalAttack = 0,
    this.defense = 0,
    this.breakthrough = 0,
    this.armor = 0,
    this.piercing = 0,
    this.reliability = 100,
    this.suppression = 0,
    this.hardness = 0,
    this.speed = 1.0,
    this.weight = 1.0,
    this.fuelCapacity = 0,
    this.fuelConsumption = 0,
    this.foodConsumption = 0,
    this.ammoConsumption = 0,
    this.supplyWeight = 1.0,
    this.range = 1,
    this.visionRange = 2,
    this.radioRange = 5,
    this.buildCostMoney = 100,
    this.buildCostTime = 10,
    this.manpowerCost = 100,
    this.maintenanceCost = 1,
    this.ironProduction = 0,
    this.oilProduction = 0,
    this.foodProduction = 0,
    this.rubberProduction = 0,
    this.aluminumProduction = 0,
    this.steelProduction = 0,
    this.moneyProduction = 0,
    this.experience = 0,
    this.level = 1,
    this.combatWidth = 2,
    this.forestPenalty = 0,
    this.marshPenalty = 0,
    this.mountainBonus = 0,
  });

  String get model {
    switch (type) {
      case UnitType.tank:
        return 'T';
      case UnitType.soldier:
        return 'S';
      case UnitType.farm:
        return 'F';
      case UnitType.aeroplane:
        return 'A';
      case UnitType.artillery:
        return 'R';
      case UnitType.ship:
        return 'W';
      case UnitType.submarine:
        return 'U';
      case UnitType.city:
        return 'C';
      case UnitType.factory:
        return 'X';
      case UnitType.resource:
        return r'$';
      case UnitType.empty:
        return '.';
    }
  }

  void draw() {
    // Если side есть — берем его цвет, если null — ставим белый (Color.white)
    String currentColor = side?.color ?? AnsiColor.white;
    stdout.write("$currentColor$model${AnsiColor.reset}");
  }

  String about() {
    // Безопасное получение названия стороны или "Нейтрал"
    String sideName = side?.name ?? "Neutral";
    return "Object $name ($model) at ($x, $y) | Side: $sideName | HP: $health | Org: $organization";
  }
}

class WorldMap {
  List<List<GameObject?>> worldMap = []; // ✅ Инициализируем пустым списком

  WorldMap(int width, int height) {
    worldMap = List.generate(height, (_) => List.filled(width, null));
  }

  // Правильно: side уже установлен ДО размещения
  void addObject(GameObject obj) {
    if (obj.side != null) {
      worldMap[obj.y][obj.x] = obj;
    } else {
      throw Exception('Object ${obj.name} has no side assigned!');
    }
  }

  // Размещение с немедленным присвоением стороны
  void addObjectToSide(GameObject obj, Country side, int x, int y) {
    obj.side = side;
    obj.x = x;
    obj.y = y;
    worldMap[obj.y][obj.x] = obj;
  }

  // Получить объект с карты
  GameObject? getObject(int x, int y) {
    if (x >= 0 && x < worldMap[0].length && y >= 0 && y < worldMap.length) {
      return worldMap[y][x];
    }
    return null;
  }

  // Переместить объект
  void moveObject(GameObject obj, int newX, int newY) {
    worldMap[obj.y][obj.x] = null;
    obj.x = newX;
    obj.y = newY;
    worldMap[obj.y][obj.x] = obj;
  }

  // Вывести всю карту
  void printMap() {
    for (var row in worldMap) {
      for (var cell in row) {
        if (cell != null) {
          cell.draw();
        } else {
          stdout.write('${AnsiColor.white}.${AnsiColor.reset}');
        }
        stdout.write(' ');
      }
      print('');
    }
  }
}
