import 'GameObject.dart';
import 'Country.dart';
import 'Enums/Types.dart';

List<List<GameObject>> generateMap({
  required int sizeX,
  required int sizeY,
  required Country neutral,
}) {
  return List.generate(
    sizeY,
    (y) => List.generate(
      sizeX,
      (x) => GameObject(
        // Базовая инфа
        name: "Пустошь",
        description: "Обычная территория, не занятая постройками",
        x: x,
        y: y,
        type: UnitType.empty,
        side: neutral,

        // Твой запрос на огромный хп
        health: 10000000,
        maxHealth: 10000000,

        // Остальные параметры для "земли" (по нулям или дефолт)
        isControlled: false,
        isAlive: false,
        isVisible: true,
        isEntrenched: false,
        organization: 100,
        maxOrganization: 100,
        morale: 0,
        stamina: 0,
        softAttack: 0,
        hardAttack: 0,
        airAttack: 0,
        navalAttack: 0,
        defense: 10, // Базовая защита территории
        breakthrough: 0,
        armor: 0,
        piercing: 0,
        reliability: 100,
        suppression: 0,
        hardness: 0,
        speed: 0,
        weight: 0,
        fuelCapacity: 0,
        fuelConsumption: 0,
        foodConsumption: 0,
        ammoConsumption: 0,
        supplyWeight: 0,
        range: 0,
        visionRange: 0,
        radioRange: 0,
        buildCostMoney: 0,
        buildCostTime: 0,
        manpowerCost: 0,
        maintenanceCost: 0,
        ironProduction: 0,
        oilProduction: 0,
        foodProduction: 0,
        rubberProduction: 0,
        aluminumProduction: 0,
        steelProduction: 0,
        moneyProduction: 0,
        experience: 0,
        level: 1,
        combatWidth: 0,
        forestPenalty: 0,
        marshPenalty: 0,
        mountainBonus: 0,
      ),
    ),
  );
}
