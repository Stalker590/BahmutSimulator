import 'GameObject.dart';
import 'Enums/Types.dart';

// ============================================================================
// УКРАИНСКИЙ ВОЕННЫЙ ПАК - Реальная техника и юниты ЗСУ
// ============================================================================
//
// This file contains the configuration for the Ukrainian side in the Bahmut Simulator game.

// НЕМЕЦКИЙ ЗВЕРЬ - LEOPARD 2A6
GameObject Leopard2A6 = GameObject(
  name: "Leopard 2A6",
  description:
      "Основной боевой танк со 120-мм гладкоствольной пушкой L55. Высокая точность и бронирование",
  x: 2,
  y: 3,
  type: UnitType.tank,
  side: null,

  // Состояние
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  // Живучесть и Дух
  health: 1200,
  maxHealth: 1200,
  organization: 100,
  maxOrganization: 100,
  morale: 1.5,
  stamina: 100,

  // Огневая мощь (Максимальный реализм)
  softAttack: 45, // Против пехоты
  hardAttack: 85, // Против танков (L55 решает)
  airAttack: 10, // Пулеметы MG3
  navalAttack: 0,
  defense: 60, // Отличная защита в статике
  breakthrough: 55, // Создан для прорыва
  armor: 95, // Крепкая броня
  piercing: 90, // Подкалиберы шьют всё
  reliability: 85, // Немецкое качество, но требует ухода
  suppression: 20,
  hardness: 0.9, // 90% бронированности
  // Логистика
  speed: 1.5, // Резвый для такого веса
  weight: 62.5, // Тяжелый (62.5 тонны)
  fuelCapacity: 1100,
  fuelConsumption: 5.5,
  foodConsumption: 0.5,
  ammoConsumption: 4.0,
  supplyWeight: 3.5,
  range: 8,
  visionRange: 5, // Топовая оптика
  radioRange: 15,

  // Экономика
  buildCostMoney: 15000000,
  buildCostTime: 60,
  manpowerCost: 4, // Экипаж 4 человека
  maintenanceCost: 500,

  // Ресурсы (он потребитель, а не производитель)
  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  // Опыт
  experience: 0,
  level: 1,
  combatWidth: 3, // Занимает место на фронте
  // Местность
  forestPenalty: -0.2,
  marshPenalty: -0.5,
  mountainBonus: -0.1,
);

// СОВЕТСКАЯ КЛАССИКА - T-72
GameObject T72 = GameObject(
  name: "T-72",
  description:
      "Советский основной боевой танк. Прост в производстве, надежен, но тесен",
  x: 5,
  y: 1,
  type: UnitType.tank, // Поменял с soldier на tank, это же танк
  side: null,

  // Состояние
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  // Живучесть
  health: 800,
  maxHealth: 800,
  organization: 80,
  maxOrganization: 80,
  morale: 1.0,
  stamina: 80,

  // Огневая мощь
  softAttack: 35,
  hardAttack: 60,
  airAttack: 8,
  navalAttack: 0,
  defense: 40,
  breakthrough: 45,
  armor: 70, // Броня слабее Леопарда
  piercing: 65,
  reliability: 95, // Очень надежный и простой
  suppression: 15,
  hardness: 0.8,

  // Логистика
  speed: 1.3,
  weight: 41.5, // Легче западных танков
  fuelCapacity: 1200,
  fuelConsumption: 4.5,
  foodConsumption: 0.4,
  ammoConsumption: 3.5,
  supplyWeight: 2.5,
  range: 7,
  visionRange: 3, // Оптика похуже
  radioRange: 10,

  // Экономика
  buildCostMoney: 5000000,
  buildCostTime: 30,
  manpowerCost: 3, // Экипаж 3 человека (автомат заряжания)
  maintenanceCost: 200,

  // Ресурсы
  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  // Опыт
  experience: 0,
  level: 1,
  combatWidth: 2, // Занимает место на фронте
  // Местность
  forestPenalty: -0.1,
  marshPenalty: -0.4,
  mountainBonus: 0.0,
);

// АМЕРИКАНСКИЙ КУСАЧИЙ - M2 BRADLEY
GameObject BradleyM2 = GameObject(
  name: "M2 Bradley",
  description:
      "БМП с 25-мм пушкой Bushmaster и ракетами TOW. Идеален против Т-72",
  x: 0,
  y: 0,
  type: UnitType.tank, // В нашей логике это бронетехника
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  // Живучесть
  health: 600,
  maxHealth: 600,
  organization: 90,
  maxOrganization: 90,
  morale: 1.3,
  stamina: 90,

  // Огневая мощь
  softAttack: 50, // Пушка шинкует пехоту в фарш
  hardAttack: 75, // Ракеты TOW уничтожают танки
  airAttack: 15,
  navalAttack: 0,
  defense: 35, // Броня слабая
  breakthrough: 40,
  armor: 30, // Пробивается почти чем угодно
  piercing: 80, // Но сам пробивает почти всех
  reliability: 80,
  suppression: 30,
  hardness: 0.5, // 50% бронированности
  // Логистика
  speed: 1.8, // Быстрее танков
  weight: 27.0,
  fuelCapacity: 600,
  fuelConsumption: 3.0,
  foodConsumption: 0.8, // Больше десанта внутри
  ammoConsumption: 5.0,
  supplyWeight: 2.0,
  range: 10,
  visionRange: 6, // Тепловизоры решают
  radioRange: 12,

  // Экономика
  buildCostMoney: 3000000,
  buildCostTime: 25,
  manpowerCost: 3, // Экипаж + десант считаем отдельно в логике
  maintenanceCost: 150,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 0,
  level: 1,
  combatWidth: 1, // Компактный

  forestPenalty: -0.1,
  marshPenalty: -0.3,
  mountainBonus: 0.1,
);

// ЭЛИТА - ССО (Сили Спеціальних Операцій)
GameObject SSO_Unit = GameObject(
  name: "Группа ССО",
  description: "Профессионалы разведки и диверсий. Высокая скрытность",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: true,

  // Живучесть
  health: 200,
  maxHealth: 200,
  organization: 150, // Бешеная мораль
  maxOrganization: 150,
  morale: 2.5,
  stamina: 200,

  // Огневая мощь
  softAttack: 40,
  hardAttack: 30, // Javelin в комплекте
  airAttack: 5,
  navalAttack: 0,
  defense: 80, // Попробуй выбей их из застройки
  breakthrough: 70,
  armor: 5, // Брони нет
  piercing: 75,
  reliability: 100,
  suppression: 40,
  hardness: 0.05, // Просто люди
  // Логистика
  speed: 1.1, // Пешком
  weight: 0.5,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 1.2, // Качественное питание нужно
  ammoConsumption: 2.0,
  supplyWeight: 0.5,
  range: 5,
  visionRange: 8, // Лучшая разведка
  radioRange: 20,

  // Экономика
  buildCostMoney: 1000000,
  buildCostTime: 90, // Обучение спеца - это долго
  manpowerCost: 10, // Маленький отряд
  maintenanceCost: 100,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 50, // Сразу опытные
  level: 3,
  combatWidth: 0.5, // Почти не занимают фронт

  forestPenalty: 0.2, // Бонус в лесу!
  marshPenalty: 0.1, // Бонус в болоте
  mountainBonus: 0.3, // Бонус в горах
);

// ============================================================================
// ТАНКИ
// ============================================================================
//
// This file contains the configuration for the Ukrainian side in the Bahmut Simulator game.

// ОСНОВНОЙ УКРАИНСКИЙ ТАНК - T-84 OPLOT
GameObject T84Oplot = GameObject(
  name: "T-84 Oplot",
  description:
      "Украинский ОБТ с 125-мм пушкой. Модернизирован, имеет динамическую защиту Kombinovana",
  x: 0,
  y: 0,
  type: UnitType.tank,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 950,
  maxHealth: 950,
  organization: 95,
  maxOrganization: 95,
  morale: 1.4,
  stamina: 95,

  softAttack: 42,
  hardAttack: 78,
  airAttack: 9,
  navalAttack: 0,
  defense: 50,
  breakthrough: 52,
  armor: 85,
  piercing: 85,
  reliability: 80,
  suppression: 18,
  hardness: 0.85,

  speed: 1.4,
  weight: 51.0,
  fuelCapacity: 1050,
  fuelConsumption: 5.2,
  foodConsumption: 0.5,
  ammoConsumption: 3.8,
  supplyWeight: 3.2,
  range: 8,
  visionRange: 5,
  radioRange: 14,

  buildCostMoney: 12000000,
  buildCostTime: 50,
  manpowerCost: 4,
  maintenanceCost: 450,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 0,
  level: 1,
  combatWidth: 3,

  forestPenalty: -0.2,
  marshPenalty: -0.5,
  mountainBonus: -0.1,
);

// СОВЕТСКИЙ НАСЛЕДНИК - T-72B
GameObject T72B = GameObject(
  name: "T-72B (Mod.1989)",
  description:
      "Модифицированный советский танк. На вооружении ЗСУ, простой в обслуживании",
  x: 0,
  y: 0,
  type: UnitType.tank,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 780,
  maxHealth: 780,
  organization: 80,
  maxOrganization: 80,
  morale: 1.0,
  stamina: 80,

  softAttack: 34,
  hardAttack: 56,
  airAttack: 7,
  navalAttack: 0,
  defense: 38,
  breakthrough: 42,
  armor: 65,
  piercing: 62,
  reliability: 95,
  suppression: 14,
  hardness: 0.8,

  speed: 1.3,
  weight: 41.5,
  fuelCapacity: 1200,
  fuelConsumption: 4.5,
  foodConsumption: 0.4,
  ammoConsumption: 3.5,
  supplyWeight: 2.5,
  range: 7,
  visionRange: 3,
  radioRange: 10,

  buildCostMoney: 4500000,
  buildCostTime: 28,
  manpowerCost: 3,
  maintenanceCost: 180,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 0,
  level: 1,
  combatWidth: 2,

  forestPenalty: -0.1,
  marshPenalty: -0.4,
  mountainBonus: 0.0,
);

// ЗАПАДНЫЙ СОЮЗНИК - LEOPARD 2A4
GameObject Leopard2A4 = GameObject(
  name: "Leopard 2A4",
  description:
      "Немецкий ОБТ от союзников. Надежный, с отличной оптикой и мобильностью",
  x: 0,
  y: 0,
  type: UnitType.tank,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 1150,
  maxHealth: 1150,
  organization: 100,
  maxOrganization: 100,
  morale: 1.5,
  stamina: 100,

  softAttack: 48,
  hardAttack: 84,
  airAttack: 10,
  navalAttack: 0,
  defense: 58,
  breakthrough: 54,
  armor: 92,
  piercing: 88,
  reliability: 85,
  suppression: 19,
  hardness: 0.88,

  speed: 1.6,
  weight: 55.0,
  fuelCapacity: 1100,
  fuelConsumption: 5.3,
  foodConsumption: 0.5,
  ammoConsumption: 4.0,
  supplyWeight: 3.4,
  range: 8,
  visionRange: 6,
  radioRange: 15,

  buildCostMoney: 14500000,
  buildCostTime: 55,
  manpowerCost: 4,
  maintenanceCost: 500,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 0,
  level: 1,
  combatWidth: 3,

  forestPenalty: -0.2,
  marshPenalty: -0.5,
  mountainBonus: -0.1,
);

// ============================================================================
// БОЕВЫЕ МАШИНЫ ПЕХОТЫ / БТР
// ============================================================================
//
// This file contains the configuration for the Ukrainian side in the Bahmut Simulator game.

// СОВЕТСКАЯ БМП - BMP-2
GameObject BMP2 = GameObject(
  name: "BMP-2",
  description:
      "Боевая машина пехоты. 30-мм пушка, мобильная, хороша для поддержки",
  x: 0,
  y: 0,
  type: UnitType.tank,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 520,
  maxHealth: 520,
  organization: 85,
  maxOrganization: 85,
  morale: 1.1,
  stamina: 85,

  softAttack: 48,
  hardAttack: 55,
  airAttack: 12,
  navalAttack: 0,
  defense: 32,
  breakthrough: 38,
  armor: 28,
  piercing: 78,
  reliability: 92,
  suppression: 25,
  hardness: 0.6,

  speed: 1.7,
  weight: 23.5,
  fuelCapacity: 460,
  fuelConsumption: 2.8,
  foodConsumption: 0.7,
  ammoConsumption: 4.5,
  supplyWeight: 1.8,
  range: 9,
  visionRange: 4,
  radioRange: 12,

  buildCostMoney: 2800000,
  buildCostTime: 22,
  manpowerCost: 3,
  maintenanceCost: 140,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 0,
  level: 1,
  combatWidth: 2,

  forestPenalty: -0.1,
  marshPenalty: -0.3,
  mountainBonus: 0.0,
);

// НОВАЯ БМП - BMP-3
GameObject BMP3 = GameObject(
  name: "BMP-3",
  description:
      "Современная БМП с 100-мм пушкой и ракетами. Огневая мощь выше, броня толще",
  x: 0,
  y: 0,
  type: UnitType.tank,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 650,
  maxHealth: 650,
  organization: 90,
  maxOrganization: 90,
  morale: 1.2,
  stamina: 90,

  softAttack: 55,
  hardAttack: 72,
  airAttack: 14,
  navalAttack: 0,
  defense: 38,
  breakthrough: 45,
  armor: 38,
  piercing: 85,
  reliability: 88,
  suppression: 28,
  hardness: 0.7,

  speed: 1.5,
  weight: 32.0,
  fuelCapacity: 500,
  fuelConsumption: 3.2,
  foodConsumption: 0.8,
  ammoConsumption: 5.2,
  supplyWeight: 2.2,
  range: 10,
  visionRange: 5,
  radioRange: 13,

  buildCostMoney: 3500000,
  buildCostTime: 28,
  manpowerCost: 3,
  maintenanceCost: 180,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 0,
  level: 1,
  combatWidth: 2,

  forestPenalty: -0.15,
  marshPenalty: -0.35,
  mountainBonus: 0.05,
);

// УКРАИНСКАЯ БТР - FUCHS / Fuchs-NVP
GameObject FuchsNVP = GameObject(
  name: "Fuchs-NVP",
  description:
      "Герметичный украинский БТР-защита от РХБЗ. Мобилен, используется БТРО",
  x: 0,
  y: 0,
  type: UnitType.tank,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 400,
  maxHealth: 400,
  organization: 75,
  maxOrganization: 75,
  morale: 0.9,
  stamina: 75,

  softAttack: 25,
  hardAttack: 15,
  airAttack: 0,
  navalAttack: 0,
  defense: 25,
  breakthrough: 20,
  armor: 18,
  piercing: 40,
  reliability: 90,
  suppression: 10,
  hardness: 0.5,

  speed: 1.8,
  weight: 18.0,
  fuelCapacity: 520,
  fuelConsumption: 2.6,
  foodConsumption: 1.0,
  ammoConsumption: 1.5,
  supplyWeight: 1.5,
  range: 12,
  visionRange: 3,
  radioRange: 11,

  buildCostMoney: 2000000,
  buildCostTime: 18,
  manpowerCost: 2,
  maintenanceCost: 100,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 0,
  level: 1,
  combatWidth: 1,

  forestPenalty: 0.0,
  marshPenalty: -0.2,
  mountainBonus: 0.1,
);

// ============================================================================
// АРТИЛЛЕРИЯ И РАКЕТЫ
// ============================================================================
//
// This file contains the configuration for the Ukrainian side in the Bahmut Simulator game.

// БОГ ВОЙНЫ - M142 HIMARS
GameObject Himars = GameObject(
  name: "M142 HIMARS",
  description:
      "Высокоточная РСЗО США. Керамические ракеты точны как лазер, бьют далеко",
  x: 0,
  y: 0,
  type: UnitType.artillery,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 300,
  maxHealth: 300,
  organization: 50,
  maxOrganization: 50,
  morale: 0.8,
  stamina: 60,

  softAttack: 100,
  hardAttack: 110,
  airAttack: 0,
  navalAttack: 10,
  defense: 5,
  breakthrough: 10,
  armor: 5,
  piercing: 100,
  reliability: 90,
  suppression: 60,
  hardness: 0.1,

  speed: 2.2,
  weight: 16.0,
  fuelCapacity: 450,
  fuelConsumption: 2.5,
  foodConsumption: 0.3,
  ammoConsumption: 12.0,
  supplyWeight: 4.0,
  range: 30,
  visionRange: 3,
  radioRange: 25,

  buildCostMoney: 5000000,
  buildCostTime: 45,
  manpowerCost: 3,
  maintenanceCost: 400,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 0,
  level: 1,
  combatWidth: 3,

  forestPenalty: -0.4,
  marshPenalty: -0.7,
  mountainBonus: -0.2,
);

// СОВЕТСКАЯ КОРОЛЕВА - 2S7 PION
GameObject Pion2S7 = GameObject(
  name: "2S7 Pion",
  description:
      "Самоходная пушка на 203-мм. Огромный урон, низкая скорость стрельбы",
  x: 0,
  y: 0,
  type: UnitType.artillery,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 380,
  maxHealth: 380,
  organization: 40,
  maxOrganization: 40,
  morale: 0.7,
  stamina: 50,

  softAttack: 120,
  hardAttack: 95,
  airAttack: 0,
  navalAttack: 15,
  defense: 8,
  breakthrough: 15,
  armor: 12,
  piercing: 95,
  reliability: 78,
  suppression: 70,
  hardness: 0.3,

  speed: 0.8,
  weight: 62.0,
  fuelCapacity: 700,
  fuelConsumption: 3.5,
  foodConsumption: 0.4,
  ammoConsumption: 8.0,
  supplyWeight: 5.5,
  range: 25,
  visionRange: 2,
  radioRange: 12,

  buildCostMoney: 4000000,
  buildCostTime: 40,
  manpowerCost: 4,
  maintenanceCost: 350,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 0,
  level: 1,
  combatWidth: 3,

  forestPenalty: -0.5,
  marshPenalty: -0.8,
  mountainBonus: -0.3,
);

// МОБИЛЬНАЯ АРТИЛЛЕРИЯ - 2S3 AKATSIYA
GameObject Akatsiya2S3 = GameObject(
  name: "2S3 Akatsiya",
  description:
      "152-мм самоходная гаубица. Баланс между мобильностью и огневой мощью",
  x: 0,
  y: 0,
  type: UnitType.artillery,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 320,
  maxHealth: 320,
  organization: 45,
  maxOrganization: 45,
  morale: 0.75,
  stamina: 55,

  softAttack: 85,
  hardAttack: 70,
  airAttack: 0,
  navalAttack: 8,
  defense: 6,
  breakthrough: 12,
  armor: 8,
  piercing: 80,
  reliability: 85,
  suppression: 50,
  hardness: 0.2,

  speed: 1.2,
  weight: 34.0,
  fuelCapacity: 520,
  fuelConsumption: 2.8,
  foodConsumption: 0.35,
  ammoConsumption: 6.5,
  supplyWeight: 3.5,
  range: 20,
  visionRange: 2,
  radioRange: 13,

  buildCostMoney: 2500000,
  buildCostTime: 30,
  manpowerCost: 3,
  maintenanceCost: 200,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 0,
  level: 1,
  combatWidth: 2,

  forestPenalty: -0.35,
  marshPenalty: -0.65,
  mountainBonus: -0.2,
);

// РАКЕТНАЯ УСТАНОВКА - BUK M1
GameObject BukM1 = GameObject(
  name: "Buk M1",
  description:
      "ЗРК для ПВО. Управляемые ракеты, хороша против самолетов и вертолетов",
  x: 0,
  y: 0,
  type: UnitType.artillery,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 350,
  maxHealth: 350,
  organization: 55,
  maxOrganization: 55,
  morale: 0.8,
  stamina: 65,

  softAttack: 40,
  hardAttack: 35,
  airAttack: 95,
  navalAttack: 5,
  defense: 10,
  breakthrough: 5,
  armor: 10,
  piercing: 90,
  reliability: 82,
  suppression: 35,
  hardness: 0.25,

  speed: 1.4,
  weight: 24.0,
  fuelCapacity: 480,
  fuelConsumption: 2.4,
  foodConsumption: 0.3,
  ammoConsumption: 5.0,
  supplyWeight: 2.5,
  range: 22,
  visionRange: 4,
  radioRange: 18,

  buildCostMoney: 3200000,
  buildCostTime: 35,
  manpowerCost: 3,
  maintenanceCost: 280,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 0,
  level: 1,
  combatWidth: 2,

  forestPenalty: -0.3,
  marshPenalty: -0.5,
  mountainBonus: 0.1,
);

// ============================================================================
// ПЕХОТА
// ============================================================================
//
// This file contains the configuration for the Ukrainian side in the Bahmut Simulator game.

// ЭЛИТА - ССО (СПЕЦІАЛЬНІ СИЛИ)
GameObject SSOUnit = GameObject(
  name: "Група ССО",
  description:
      "Украинский спецназ. Высокая подготовка, боевой дух, отличные тактики",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: true,

  health: 220,
  maxHealth: 220,
  organization: 160,
  maxOrganization: 160,
  morale: 2.8,
  stamina: 220,

  softAttack: 45,
  hardAttack: 35,
  airAttack: 6,
  navalAttack: 0,
  defense: 85,
  breakthrough: 75,
  armor: 5,
  piercing: 80,
  reliability: 100,
  suppression: 45,
  hardness: 0.05,

  speed: 1.2,
  weight: 0.6,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 1.3,
  ammoConsumption: 2.2,
  supplyWeight: 0.6,
  range: 6,
  visionRange: 9,
  radioRange: 22,

  buildCostMoney: 1200000,
  buildCostTime: 100,
  manpowerCost: 12,
  maintenanceCost: 120,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 60,
  level: 3,
  combatWidth: 0.5,

  forestPenalty: 0.25,
  marshPenalty: 0.15,
  mountainBonus: 0.35,
);

// ДОБРОВОЛЬЦЫ - TERRITORIALNA OBORONA
GameObject TerritorialnaOborona = GameObject(
  name: "Територіальна оборона",
  description:
      "Украинская территориальная оборона. Мотивированные добровольцы, защита местности",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: true,

  health: 150,
  maxHealth: 150,
  organization: 120,
  maxOrganization: 120,
  morale: 2.2,
  stamina: 140,

  softAttack: 32,
  hardAttack: 20,
  airAttack: 4,
  navalAttack: 0,
  defense: 70,
  breakthrough: 55,
  armor: 3,
  piercing: 60,
  reliability: 90,
  suppression: 35,
  hardness: 0.05,

  speed: 1.0,
  weight: 0.4,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 0.9,
  ammoConsumption: 1.8,
  supplyWeight: 0.4,
  range: 5,
  visionRange: 6,
  radioRange: 15,

  buildCostMoney: 400000,
  buildCostTime: 40,
  manpowerCost: 20,
  maintenanceCost: 80,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 25,
  level: 2,
  combatWidth: 1,

  forestPenalty: 0.1,
  marshPenalty: 0.05,
  mountainBonus: 0.2,
);

// РЕГУЛЯРНАЯ ПЕХОТА - 25-Я БМД
GameObject MechanizedInfantry = GameObject(
  name: "25-а ОДБр",
  description: "Механизированный батальон. Стандартная подготовка, боевой опет",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 180,
  maxHealth: 180,
  organization: 100,
  maxOrganization: 100,
  morale: 1.5,
  stamina: 110,

  softAttack: 38,
  hardAttack: 25,
  airAttack: 5,
  navalAttack: 0,
  defense: 60,
  breakthrough: 48,
  armor: 4,
  piercing: 65,
  reliability: 92,
  suppression: 32,
  hardness: 0.05,

  speed: 1.1,
  weight: 0.5,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 1.0,
  ammoConsumption: 2.0,
  supplyWeight: 0.5,
  range: 5,
  visionRange: 5,
  radioRange: 13,

  buildCostMoney: 600000,
  buildCostTime: 30,
  manpowerCost: 25,
  maintenanceCost: 100,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 20,
  level: 2,
  combatWidth: 1.2,

  forestPenalty: 0.05,
  marshPenalty: 0.0,
  mountainBonus: 0.1,
);

// НОВОБРАНЦЫ - MOBILIZED TROOPS
GameObject MobilizedTroops = GameObject(
  name: "Мобілізовані",
  description:
      "Недавно мобилизованные части. Боевой дух высокий, подготовка слабая",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 100,
  maxHealth: 100,
  organization: 70,
  maxOrganization: 70,
  morale: 1.8,
  stamina: 80,

  softAttack: 25,
  hardAttack: 15,
  airAttack: 3,
  navalAttack: 0,
  defense: 40,
  breakthrough: 30,
  armor: 2,
  piercing: 45,
  reliability: 70,
  suppression: 20,
  hardness: 0.05,

  speed: 1.0,
  weight: 0.3,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 0.8,
  ammoConsumption: 1.5,
  supplyWeight: 0.3,
  range: 4,
  visionRange: 3,
  radioRange: 8,

  buildCostMoney: 200000,
  buildCostTime: 15,
  manpowerCost: 30,
  maintenanceCost: 50,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 5,
  level: 1,
  combatWidth: 1.5,

  forestPenalty: -0.1,
  marshPenalty: -0.1,
  mountainBonus: 0.0,
);

// ============================================================================
// ПРОТИВОТАНКОВЫЕ ЗВЕНЬЯ
// ============================================================================
//
// This file contains the configuration for the Ukrainian side in the Bahmut Simulator game.

// УКРАИНСКАЯ СПЕЦТЕХНИКА - JAVELIN TEAM
GameObject JavelinTeam = GameObject(
  name: "Javelin Team",
  description:
      "Наводчики с американскими ракетами Javelin. Смертоносны против танков",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: true,

  health: 80,
  maxHealth: 80,
  organization: 110,
  maxOrganization: 110,
  morale: 2.0,
  stamina: 100,

  softAttack: 20,
  hardAttack: 95,
  airAttack: 35,
  navalAttack: 0,
  defense: 75,
  breakthrough: 60,
  armor: 2,
  piercing: 98,
  reliability: 95,
  suppression: 30,
  hardness: 0.05,

  speed: 0.9,
  weight: 0.25,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 0.6,
  ammoConsumption: 3.5,
  supplyWeight: 0.4,
  range: 3,
  visionRange: 8,
  radioRange: 16,

  buildCostMoney: 950000,
  buildCostTime: 60,
  manpowerCost: 8,
  maintenanceCost: 150,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 40,
  level: 3,
  combatWidth: 0.3,

  forestPenalty: 0.15,
  marshPenalty: 0.1,
  mountainBonus: 0.25,
);

// PANZERFAUST / RPGS
GameObject RPGTeam = GameObject(
  name: "РПГ-7 Гроза",
  description:
      "Противотанковое звено с РПГ. Мобильны, эффективны в городе,слабы на открытой местности",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 90,
  maxHealth: 90,
  organization: 95,
  maxOrganization: 95,
  morale: 1.7,
  stamina: 95,

  softAttack: 28,
  hardAttack: 75,
  airAttack: 20,
  navalAttack: 0,
  defense: 65,
  breakthrough: 50,
  armor: 3,
  piercing: 85,
  reliability: 88,
  suppression: 25,
  hardness: 0.05,

  speed: 1.1,
  weight: 0.35,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 0.7,
  ammoConsumption: 2.8,
  supplyWeight: 0.35,
  range: 4,
  visionRange: 5,
  radioRange: 10,

  buildCostMoney: 450000,
  buildCostTime: 35,
  manpowerCost: 10,
  maintenanceCost: 80,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 15,
  level: 2,
  combatWidth: 0.5,

  forestPenalty: 0.2,
  marshPenalty: 0.1,
  mountainBonus: 0.15,
);

// ============================================================================
// ПВО
// ============================================================================
//
// This file contains the configuration for the Ukrainian side in the Bahmut Simulator game.

// ЗРК ДЛИННОЙ ОЧЕРЕДИ - MANPADS
GameObject ManpadsTeam = GameObject(
  name: "MANPADS Stinger",
  description:
      "Переносная зенитная система Stinger. Уничтожает вертолеты и низколетящие самолеты",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 70,
  maxHealth: 70,
  organization: 80,
  maxOrganization: 80,
  morale: 1.6,
  stamina: 85,

  softAttack: 15,
  hardAttack: 20,
  airAttack: 90,
  navalAttack: 0,
  defense: 50,
  breakthrough: 25,
  armor: 1,
  piercing: 88,
  reliability: 92,
  suppression: 20,
  hardness: 0.05,

  speed: 1.2,
  weight: 0.2,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 0.5,
  ammoConsumption: 4.0,
  supplyWeight: 0.25,
  range: 4,
  visionRange: 6,
  radioRange: 12,

  buildCostMoney: 850000,
  buildCostTime: 50,
  manpowerCost: 6,
  maintenanceCost: 120,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 35,
  level: 3,
  combatWidth: 0.25,

  forestPenalty: 0.1,
  marshPenalty: 0.05,
  mountainBonus: 0.2,
);

// ============================================================================
// ПОДДЕРЖКА
// ============================================================================
//
// This file contains the configuration for the Ukrainian side in the Bahmut Simulator game.

// МЕДИКИ
GameObject MedicalTeam = GameObject(
  name: "Медичний взвід",
  description:
      "Медичная группа. Восстанавливает моральное и физическое состояние боевых товарищей",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 100,
  maxHealth: 100,
  organization: 100,
  maxOrganization: 100,
  morale: 1.2,
  stamina: 100,

  softAttack: 10,
  hardAttack: 5,
  airAttack: 0,
  navalAttack: 0,
  defense: 50,
  breakthrough: 15,
  armor: 1,
  piercing: 20,
  reliability: 95,
  suppression: 10,
  hardness: 0.05,

  speed: 1.0,
  weight: 0.2,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 0.5,
  ammoConsumption: 0.2,
  supplyWeight: 0.6,
  range: 4,
  visionRange: 4,
  radioRange: 10,

  buildCostMoney: 300000,
  buildCostTime: 20,
  manpowerCost: 8,
  maintenanceCost: 60,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 10,
  level: 1,
  combatWidth: 0.1,

  forestPenalty: 0.0,
  marshPenalty: 0.0,
  mountainBonus: 0.1,
);

// УНИЧТОЖЕННЫЙ ВРАГ - ENGINEERS
GameObject EngineersUnit = GameObject(
  name: "Розмінування",
  description:
      "Саперное подразеление. Разминирование, инженерная защита, разрушение позиций",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 120,
  maxHealth: 120,
  organization: 90,
  maxOrganization: 90,
  morale: 1.4,
  stamina: 100,

  softAttack: 30,
  hardAttack: 35,
  airAttack: 2,
  navalAttack: 0,
  defense: 70,
  breakthrough: 65,
  armor: 3,
  piercing: 70,
  reliability: 94,
  suppression: 28,
  hardness: 0.05,

  speed: 0.9,
  weight: 0.35,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 0.8,
  ammoConsumption: 1.8,
  supplyWeight: 0.5,
  range: 4,
  visionRange: 4,
  radioRange: 11,

  buildCostMoney: 500000,
  buildCostTime: 40,
  manpowerCost: 12,
  maintenanceCost: 90,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 20,
  level: 2,
  combatWidth: 0.6,

  forestPenalty: -0.05,
  marshPenalty: -0.2,
  mountainBonus: 0.15,
);

// ============================================================================
// УКРАИНСКИЙ НАБОР - СПИСОК ВСЕХ ЮНИТОВ
// ============================================================================
final List<GameObject> UkrainianSet = [
  // Танки
  Leopard2A6,
  T72,
  T84Oplot,
  T72B,
  Leopard2A4,

  // БМП/БТР
  BradleyM2,
  BMP2,
  BMP3,
  FuchsNVP,

  // Артиллерия
  Himars,
  Pion2S7,
  Akatsiya2S3,
  BukM1,

  // Пехота
  SSO_Unit,
  TerritorialnaOborona,
  MechanizedInfantry,
  MobilizedTroops,

  // Противотанковые
  JavelinTeam,
  RPGTeam,

  // ПВО и Поддержка
  ManpadsTeam,
  MedicalTeam,
  EngineersUnit,
];
