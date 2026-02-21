import 'GameObject.dart';
import 'Enums/Types.dart';

// ============================================================================
// РУССКИЙ ВОЕННЫЙ ПАК - Реальная техника ВС РФ
// ============================================================================
// ТАНКИ
// ============================================================================
// ОСНОВНОЙ БОЕВОЙ - T-90M
GameObject T90M = GameObject(
  name: "T-90M",
  description:
      "Современный российский ОБТ. Модернизирован с новой оптикой и системой управления огнем",
  x: 0,
  y: 0,
  type: UnitType.tank,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 1050,
  maxHealth: 1050,
  organization: 90,
  maxOrganization: 90,
  morale: 1.3,
  stamina: 90,

  softAttack: 44,
  hardAttack: 80,
  airAttack: 8,
  navalAttack: 0,
  defense: 52,
  breakthrough: 50,
  armor: 88,
  piercing: 86,
  reliability: 80,
  suppression: 17,
  hardness: 0.85,

  speed: 1.3,
  weight: 48.0,
  fuelCapacity: 1000,
  fuelConsumption: 5.0,
  foodConsumption: 0.5,
  ammoConsumption: 3.8,
  supplyWeight: 3.0,
  range: 8,
  visionRange: 5,
  radioRange: 13,

  buildCostMoney: 11000000,
  buildCostTime: 48,
  manpowerCost: 4,
  maintenanceCost: 420,

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

// ХВАЛЕБНАЯ РАБОЧАЯ ЛОШАДЬ - T-72B3
GameObject T72B3 = GameObject(
  name: "T-72B3",
  description:
      "Модернизированный советский танк. Хороший баланс цены и качества, в больших количествах",
  x: 0,
  y: 0,
  type: UnitType.tank,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 800,
  maxHealth: 800,
  organization: 80,
  maxOrganization: 80,
  morale: 1.0,
  stamina: 80,

  softAttack: 36,
  hardAttack: 62,
  airAttack: 7,
  navalAttack: 0,
  defense: 40,
  breakthrough: 44,
  armor: 72,
  piercing: 68,
  reliability: 92,
  suppression: 15,
  hardness: 0.78,

  speed: 1.2,
  weight: 41.5,
  fuelCapacity: 1200,
  fuelConsumption: 4.8,
  foodConsumption: 0.4,
  ammoConsumption: 3.6,
  supplyWeight: 2.6,
  range: 7,
  visionRange: 3,
  radioRange: 10,

  buildCostMoney: 4800000,
  buildCostTime: 30,
  manpowerCost: 3,
  maintenanceCost: 190,

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

// СТАРАЯ РАБОЧАЯ ЛОШАДЬ - T-62
GameObject T62 = GameObject(
  name: "T-62",
  description:
      "Советский ветеран. Старый, но живучий. В запасе РФ, используется в бросовых волнах",
  x: 0,
  y: 0,
  type: UnitType.tank,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 580,
  maxHealth: 580,
  organization: 60,
  maxOrganization: 60,
  morale: 0.7,
  stamina: 60,

  softAttack: 28,
  hardAttack: 45,
  airAttack: 5,
  navalAttack: 0,
  defense: 32,
  breakthrough: 30,
  armor: 45,
  piercing: 50,
  reliability: 88,
  suppression: 12,
  hardness: 0.5,

  speed: 1.0,
  weight: 36.0,
  fuelCapacity: 900,
  fuelConsumption: 4.2,
  foodConsumption: 0.3,
  ammoConsumption: 2.8,
  supplyWeight: 2.0,
  range: 6,
  visionRange: 2,
  radioRange: 8,

  buildCostMoney: 1500000,
  buildCostTime: 15,
  manpowerCost: 3,
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
  combatWidth: 2,

  forestPenalty: -0.05,
  marshPenalty: -0.3,
  mountainBonus: 0.0,
);

// ============================================================================
// БОЕВЫЕ МАШИНЫ ПЕХОТЫ
// ============================================================================
// НОВАЯ БМП - BMP-3M
GameObject BMP3M = GameObject(
  name: "BMP-3M",
  description:
      "Модернизированная БМП-3. 100-мм пушка, ракеты, отличная мобильность",
  x: 0,
  y: 0,
  type: UnitType.tank,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 620,
  maxHealth: 620,
  organization: 85,
  maxOrganization: 85,
  morale: 1.1,
  stamina: 85,

  softAttack: 52,
  hardAttack: 68,
  airAttack: 12,
  navalAttack: 0,
  defense: 36,
  breakthrough: 42,
  armor: 36,
  piercing: 82,
  reliability: 86,
  suppression: 26,
  hardness: 0.65,

  speed: 1.6,
  weight: 32.0,
  fuelCapacity: 500,
  fuelConsumption: 3.1,
  foodConsumption: 0.7,
  ammoConsumption: 5.0,
  supplyWeight: 2.1,
  range: 10,
  visionRange: 5,
  radioRange: 12,

  buildCostMoney: 3400000,
  buildCostTime: 27,
  manpowerCost: 3,
  maintenanceCost: 170,

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

// СОВЕТСКАЯ КЛАССИКА - BMP-2
GameObject BMP2RU = GameObject(
  name: "BMP-2",
  description:
      "Надежная советская БМП. 30-мм пушка, простена в обслуживании, в большом количестве",
  x: 0,
  y: 0,
  type: UnitType.tank,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 500,
  maxHealth: 500,
  organization: 80,
  maxOrganization: 80,
  morale: 0.9,
  stamina: 80,

  softAttack: 46,
  hardAttack: 52,
  airAttack: 10,
  navalAttack: 0,
  defense: 30,
  breakthrough: 35,
  armor: 26,
  piercing: 75,
  reliability: 94,
  suppression: 22,
  hardness: 0.55,

  speed: 1.7,
  weight: 23.5,
  fuelCapacity: 460,
  fuelConsumption: 2.8,
  foodConsumption: 0.6,
  ammoConsumption: 4.3,
  supplyWeight: 1.7,
  range: 9,
  visionRange: 3,
  radioRange: 11,

  buildCostMoney: 2300000,
  buildCostTime: 20,
  manpowerCost: 3,
  maintenanceCost: 120,

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

// БРОНЕВИК ЗАЩИТЫ - BTR-82A
GameObject BTR82A = GameObject(
  name: "BTR-82A",
  description:
      "Бронированный транспортер. Мобилен, 30-мм пушка, мало брони но быстрый",
  x: 0,
  y: 0,
  type: UnitType.tank,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 420,
  maxHealth: 420,
  organization: 70,
  maxOrganization: 70,
  morale: 0.8,
  stamina: 75,

  softAttack: 40,
  hardAttack: 30,
  airAttack: 8,
  navalAttack: 0,
  defense: 25,
  breakthrough: 28,
  armor: 16,
  piercing: 65,
  reliability: 90,
  suppression: 18,
  hardness: 0.4,

  speed: 1.9,
  weight: 18.0,
  fuelCapacity: 520,
  fuelConsumption: 2.6,
  foodConsumption: 0.5,
  ammoConsumption: 3.5,
  supplyWeight: 1.4,
  range: 12,
  visionRange: 3,
  radioRange: 10,

  buildCostMoney: 1800000,
  buildCostTime: 16,
  manpowerCost: 2,
  maintenanceCost: 90,

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
  mountainBonus: 0.05,
);

// ============================================================================
// АРТИЛЛЕРИЯ И РАКЕТЫ
// ============================================================================
// МОБИЛЬНАЯ СМЕРТЬ - TOS-1A BURATINO
GameObject ToS1A = GameObject(
  name: "TOS-1A Buratino",
  description:
      "Огнеметная система залпового огня. Терморазрезная боеголовка, смертоносна в застройке",
  x: 0,
  y: 0,
  type: UnitType.artillery,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 400,
  maxHealth: 400,
  organization: 60,
  maxOrganization: 60,
  morale: 0.9,
  stamina: 70,

  softAttack: 130,
  hardAttack: 85,
  airAttack: 0,
  navalAttack: 5,
  defense: 8,
  breakthrough: 20,
  armor: 14,
  piercing: 92,
  reliability: 75,
  suppression: 75,
  hardness: 0.3,

  speed: 1.4,
  weight: 32.0,
  fuelCapacity: 550,
  fuelConsumption: 2.9,
  foodConsumption: 0.3,
  ammoConsumption: 14.0,
  supplyWeight: 5.0,
  range: 6,
  visionRange: 2,
  radioRange: 14,

  buildCostMoney: 4200000,
  buildCostTime: 50,
  manpowerCost: 4,
  maintenanceCost: 380,

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
  marshPenalty: -0.6,
  mountainBonus: -0.15,
);

// КОРОЛЕВА ПОЛЕЙ - 2S1 GVOZDIKA
GameObject Gvozdika2S1 = GameObject(
  name: "2S1 Gvozdika",
  description:
      "122-мм самоходная гаубица. Мобильная артиллерия, хороший баланс огня и защиты",
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
  organization: 40,
  maxOrganization: 40,
  morale: 0.7,
  stamina: 50,

  softAttack: 80,
  hardAttack: 65,
  airAttack: 0,
  navalAttack: 6,
  defense: 5,
  breakthrough: 10,
  armor: 8,
  piercing: 78,
  reliability: 88,
  suppression: 48,
  hardness: 0.15,

  speed: 1.5,
  weight: 32.0,
  fuelCapacity: 500,
  fuelConsumption: 2.7,
  foodConsumption: 0.32,
  ammoConsumption: 6.2,
  supplyWeight: 3.2,
  range: 19,
  visionRange: 2,
  radioRange: 12,

  buildCostMoney: 2200000,
  buildCostTime: 26,
  manpowerCost: 3,
  maintenanceCost: 160,

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

// ГРОМОГЛАСНАЯ КОРОЛЕВА - 2S19 MSTA-S
GameObject Msta2S19 = GameObject(
  name: "2S19 Msta-S",
  description:
      "152-мм самоходная гаубица. На вооружении современной армии РФ, надежна и эффективна",
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
  organization: 50,
  maxOrganization: 50,
  morale: 0.8,
  stamina: 60,

  softAttack: 95,
  hardAttack: 80,
  airAttack: 0,
  navalAttack: 8,
  defense: 7,
  breakthrough: 14,
  armor: 10,
  piercing: 88,
  reliability: 82,
  suppression: 58,
  hardness: 0.2,

  speed: 1.3,
  weight: 46.0,
  fuelCapacity: 600,
  fuelConsumption: 3.2,
  foodConsumption: 0.38,
  ammoConsumption: 7.5,
  supplyWeight: 4.0,
  range: 24,
  visionRange: 2,
  radioRange: 13,

  buildCostMoney: 3100000,
  buildCostTime: 38,
  manpowerCost: 4,
  maintenanceCost: 240,

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

// РАКЕТНАЯ СИСТЕМА - ISKANDER-M
GameObject IskhanderM = GameObject(
  name: "Iskander-M",
  description:
      "Оперативно-тактический комплекс. Гиперзвуковые ракеты, дальний бой, точные удары",
  x: 0,
  y: 0,
  type: UnitType.artillery,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 280,
  maxHealth: 280,
  organization: 35,
  maxOrganization: 35,
  morale: 0.6,
  stamina: 45,

  softAttack: 150,
  hardAttack: 130,
  airAttack: 20,
  navalAttack: 25,
  defense: 4,
  breakthrough: 8,
  armor: 8,
  piercing: 110,
  reliability: 80,
  suppression: 90,
  hardness: 0.15,

  speed: 1.8,
  weight: 25.0,
  fuelCapacity: 480,
  fuelConsumption: 2.8,
  foodConsumption: 0.25,
  ammoConsumption: 18.0,
  supplyWeight: 6.0,
  range: 50,
  visionRange: 1,
  radioRange: 30,

  buildCostMoney: 6500000,
  buildCostTime: 60,
  manpowerCost: 3,
  maintenanceCost: 550,

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

  forestPenalty: -0.5,
  marshPenalty: -0.8,
  mountainBonus: -0.3,
);

// ============================================================================
// ПЕХОТА
// ============================================================================
// ПРОФЕССИОНАЛЫ - МОТОСТРЕЛКИ ГРУ
GameObject MotostrelkiGRU = GameObject(
  name: "ГРУ Мотострелки",
  description:
      "Профессиональные военные ГРУ. Обученные, опытные, ведут разведку и спецоперации",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: true,

  health: 210,
  maxHealth: 210,
  organization: 140,
  maxOrganization: 140,
  morale: 2.4,
  stamina: 200,

  softAttack: 42,
  hardAttack: 32,
  airAttack: 5,
  navalAttack: 0,
  defense: 80,
  breakthrough: 72,
  armor: 5,
  piercing: 78,
  reliability: 98,
  suppression: 42,
  hardness: 0.05,

  speed: 1.15,
  weight: 0.55,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 1.2,
  ammoConsumption: 2.0,
  supplyWeight: 0.55,
  range: 5,
  visionRange: 8,
  radioRange: 20,

  buildCostMoney: 1400000,
  buildCostTime: 120,
  manpowerCost: 10,
  maintenanceCost: 140,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 50,
  level: 3,
  combatWidth: 0.5,

  forestPenalty: 0.15,
  marshPenalty: 0.1,
  mountainBonus: 0.3,
);

// КОНТРАКТНИКИ - БОЕВАЯ ПЕХОТА
GameObject Kontraktniki = GameObject(
  name: "Контрактник",
  description:
      "Боевая пехота профессионалов по контракту. Опытные, боеспособные, хорошие тактики",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 160,
  maxHealth: 160,
  organization: 110,
  maxOrganization: 110,
  morale: 1.8,
  stamina: 130,

  softAttack: 36,
  hardAttack: 24,
  airAttack: 4,
  navalAttack: 0,
  defense: 65,
  breakthrough: 52,
  armor: 4,
  piercing: 70,
  reliability: 94,
  suppression: 34,
  hardness: 0.05,

  speed: 1.1,
  weight: 0.45,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 1.0,
  ammoConsumption: 1.8,
  supplyWeight: 0.45,
  range: 5,
  visionRange: 6,
  radioRange: 14,

  buildCostMoney: 700000,
  buildCostTime: 50,
  manpowerCost: 15,
  maintenanceCost: 110,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 30,
  level: 2,
  combatWidth: 1.0,

  forestPenalty: 0.05,
  marshPenalty: 0.0,
  mountainBonus: 0.15,
);

// ПРИЗЫВНИКИ - НОВОБРАНЦЫ
GameObject Prizyvniki = GameObject(
  name: "Призывник",
  description:
      "Молодые новобранцы. Слабая подготовка, низкий боевой дух, но их много",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 110,
  maxHealth: 110,
  organization: 65,
  maxOrganization: 65,
  morale: 1.2,
  stamina: 70,

  softAttack: 22,
  hardAttack: 12,
  airAttack: 2,
  navalAttack: 0,
  defense: 35,
  breakthrough: 25,
  armor: 2,
  piercing: 40,
  reliability: 65,
  suppression: 18,
  hardness: 0.05,

  speed: 0.95,
  weight: 0.3,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 0.7,
  ammoConsumption: 1.4,
  supplyWeight: 0.3,
  range: 4,
  visionRange: 3,
  radioRange: 7,

  buildCostMoney: 150000,
  buildCostTime: 10,
  manpowerCost: 35,
  maintenanceCost: 40,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 2,
  level: 1,
  combatWidth: 1.5,

  forestPenalty: -0.15,
  marshPenalty: -0.15,
  mountainBonus: -0.1,
);

// ШТУРМОВИКИ - ШТУРМ
GameObject Shturm = GameObject(
  name: "Штурмовик",
  description:
      "Штурмовая группа. Подготовлены для атак, агрессивны, хорошо атакуют в мясо",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 140,
  maxHealth: 140,
  organization: 100,
  maxOrganization: 100,
  morale: 1.9,
  stamina: 115,

  softAttack: 52,
  hardAttack: 18,
  airAttack: 3,
  navalAttack: 0,
  defense: 48,
  breakthrough: 68,
  armor: 3,
  piercing: 60,
  reliability: 88,
  suppression: 38,
  hardness: 0.05,

  speed: 1.25,
  weight: 0.35,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 0.9,
  ammoConsumption: 2.5,
  supplyWeight: 0.35,
  range: 4,
  visionRange: 4,
  radioRange: 9,

  buildCostMoney: 550000,
  buildCostTime: 35,
  manpowerCost: 18,
  maintenanceCost: 85,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 15,
  level: 2,
  combatWidth: 1.2,

  forestPenalty: 0.1,
  marshPenalty: 0.05,
  mountainBonus: 0.05,
);

// ============================================================================
// ПРОТИВОТАНКОВЫЕ КОМАНДЫ
// ============================================================================
// ОХОТНИКИ НА ТАНКИ - TANDEM RPG
GameObject RpgTeamRU = GameObject(
  name: "РПГ-7В Тандем",
  description:
      "Противотанковое звено с современными ракетами. Кумулятивный боеголовок, смертоносны",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 95,
  maxHealth: 95,
  organization: 100,
  maxOrganization: 100,
  morale: 1.6,
  stamina: 100,

  softAttack: 30,
  hardAttack: 82,
  airAttack: 18,
  navalAttack: 0,
  defense: 62,
  breakthrough: 48,
  armor: 3,
  piercing: 88,
  reliability: 90,
  suppression: 26,
  hardness: 0.05,

  speed: 1.1,
  weight: 0.35,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 0.75,
  ammoConsumption: 3.0,
  supplyWeight: 0.38,
  range: 4,
  visionRange: 5,
  radioRange: 10,

  buildCostMoney: 500000,
  buildCostTime: 38,
  manpowerCost: 9,
  maintenanceCost: 95,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 18,
  level: 2,
  combatWidth: 0.5,

  forestPenalty: 0.15,
  marshPenalty: 0.08,
  mountainBonus: 0.2,
);

// ПРОТИВОТАНКОВЫЙ ОТРЯД - KORNET AT
GameObject KornetAT = GameObject(
  name: "Корнет ПТРК",
  description:
      "Противотанковый ракетный комплекс класса Корнет. Управляемые ракеты, максимальная дальность",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: true,

  health: 75,
  maxHealth: 75,
  organization: 95,
  maxOrganization: 95,
  morale: 1.7,
  stamina: 90,

  softAttack: 18,
  hardAttack: 98,
  airAttack: 28,
  navalAttack: 0,
  defense: 70,
  breakthrough: 55,
  armor: 2,
  piercing: 100,
  reliability: 92,
  suppression: 28,
  hardness: 0.05,

  speed: 0.8,
  weight: 0.25,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 0.55,
  ammoConsumption: 4.0,
  supplyWeight: 0.42,
  range: 3,
  visionRange: 7,
  radioRange: 16,

  buildCostMoney: 1100000,
  buildCostTime: 65,
  manpowerCost: 6,
  maintenanceCost: 140,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 35,
  level: 3,
  combatWidth: 0.3,

  forestPenalty: 0.2,
  marshPenalty: 0.12,
  mountainBonus: 0.3,
);

// ============================================================================
// ПВО И ПОДДЕРЖКА
// ============================================================================
// ЗЕНИТНАЯ УСТАНОВКА - MANPADS IGLA
GameObject ManpadsIgla = GameObject(
  name: "ПЗРК Игла",
  description:
      "Переносная зенитная ракетная система Игла. Сбивает самолеты и вертолеты на дальности",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 65,
  maxHealth: 65,
  organization: 75,
  maxOrganization: 75,
  morale: 1.5,
  stamina: 80,

  softAttack: 12,
  hardAttack: 18,
  airAttack: 88,
  navalAttack: 0,
  defense: 48,
  breakthrough: 22,
  armor: 1,
  piercing: 86,
  reliability: 94,
  suppression: 18,
  hardness: 0.05,

  speed: 1.2,
  weight: 0.18,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 0.45,
  ammoConsumption: 3.8,
  supplyWeight: 0.22,
  range: 4,
  visionRange: 5,
  radioRange: 11,

  buildCostMoney: 800000,
  buildCostTime: 48,
  manpowerCost: 5,
  maintenanceCost: 110,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 32,
  level: 3,
  combatWidth: 0.25,

  forestPenalty: 0.08,
  marshPenalty: 0.03,
  mountainBonus: 0.18,
);

// САПЕРЫ - ИНЖЕНЕРЫ
GameObject SaperyEngineers = GameObject(
  name: "Саперы РВиА",
  description:
      "Инженерное подразделение. Укрепление прорвов, инженерная разведка, создание позиций",
  x: 0,
  y: 0,
  type: UnitType.soldier,
  side: null,
  isControlled: true,
  isAlive: true,
  isVisible: true,
  isEntrenched: false,

  health: 125,
  maxHealth: 125,
  organization: 85,
  maxOrganization: 85,
  morale: 1.3,
  stamina: 95,

  softAttack: 28,
  hardAttack: 32,
  airAttack: 1,
  navalAttack: 0,
  defense: 68,
  breakthrough: 60,
  armor: 3,
  piercing: 68,
  reliability: 96,
  suppression: 26,
  hardness: 0.05,

  speed: 0.85,
  weight: 0.32,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 0.75,
  ammoConsumption: 1.6,
  supplyWeight: 0.48,
  range: 4,
  visionRange: 3,
  radioRange: 10,

  buildCostMoney: 600000,
  buildCostTime: 42,
  manpowerCost: 14,
  maintenanceCost: 105,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 22,
  level: 2,
  combatWidth: 0.6,

  forestPenalty: -0.05,
  marshPenalty: -0.2,
  mountainBonus: 0.15,
);

// САНИТАРЫ - МЕДИКИ
GameObject PolkovyeMediki = GameObject(
  name: "Полковий Лікар",
  description:
      "Медицинское звено. Оказание помощи раненым, поддержка морального духа",
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
  morale: 1.1,
  stamina: 90,

  softAttack: 8,
  hardAttack: 4,
  airAttack: 0,
  navalAttack: 0,
  defense: 48,
  breakthrough: 12,
  armor: 1,
  piercing: 18,
  reliability: 96,
  suppression: 8,
  hardness: 0.05,

  speed: 1.0,
  weight: 0.2,
  fuelCapacity: 0,
  fuelConsumption: 0,
  foodConsumption: 0.5,
  ammoConsumption: 0.1,
  supplyWeight: 0.55,
  range: 4,
  visionRange: 3,
  radioRange: 9,

  buildCostMoney: 250000,
  buildCostTime: 18,
  manpowerCost: 6,
  maintenanceCost: 50,

  ironProduction: 0,
  oilProduction: 0,
  foodProduction: 0,
  rubberProduction: 0,
  aluminumProduction: 0,
  steelProduction: 0,
  moneyProduction: 0,

  experience: 8,
  level: 1,
  combatWidth: 0.1,

  forestPenalty: 0.0,
  marshPenalty: 0.0,
  mountainBonus: 0.08,
);

// ============================================================================
// РУССКИЙ НАБОР - СПИСОК ВСЕХ ЮНИТОВ
// ============================================================================
final List<GameObject> RussianSet = [
  // Танки
  T90M,
  T72B3,
  T62,

  // БМП/БТР
  BMP3M,
  BMP2RU,
  BTR82A,

  // Артиллерия
  ToS1A,
  Gvozdika2S1,
  Msta2S19,
  IskhanderM,

  // Пехота
  MotostrelkiGRU,
  Kontraktniki,
  Prizyvniki,
  Shturm,

  // Противотанковые
  RpgTeamRU,
  KornetAT,

  // ПВО и Поддержка
  ManpadsIgla,
  SaperyEngineers,
  PolkovyeMediki,
];
