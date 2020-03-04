import 'dart:convert';

// To parse this JSON data, do
//
//     final units = unitsFromJson(jsonString);

Map<String, Units> unitsFromJson(String str) => Map.from(json.decode(str)).map((k, v) => MapEntry<String, Units>(k, Units.fromJson(v)));

String unitsToJson(Map<String, Units> data) => json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

class Units {
  String name;
  String id;
  String maxRarity;
  String minRarity;
  Sex sex;
  Stats stats;
  int statsPattern;
  List<Equip> equip;
  List<String> enhancementSkills;
  String jpname;
  The6Form the6Form;
  int materiaSlots;
  Mitigation mitigation;

  Units({
    this.name,
    this.id,
    this.maxRarity,
    this.minRarity,
    this.sex,
    this.stats,
    this.statsPattern,
    this.equip,
    this.enhancementSkills,
    this.jpname,
    this.the6Form,
    this.materiaSlots,
    this.mitigation,
  });

  factory Units.fromJson(Map<String, dynamic> json) => Units(
    name: json["name"] == null ? null : json["name"],
    id: json["id"] == null ? null : json["id"],
    maxRarity: json["max_rarity"] == null ? null : json["max_rarity"],
    minRarity: json["min_rarity"] == null ? null : json["min_rarity"],
    sex: json["sex"] == null ? null : sexValues.map[json["sex"]],
    stats: json["stats"] == null ? null : Stats.fromJson(json["stats"]),
    statsPattern: json["stats_pattern"] == null ? null : json["stats_pattern"],
    equip: json["equip"] == null ? null : List<Equip>.from(json["equip"].map((x) => x == null ? null : equipValues.map[x])),
    enhancementSkills: json["enhancementSkills"] == null ? null : List<String>.from(json["enhancementSkills"].map((x) => x)),
    jpname: json["jpname"] == null ? null : json["jpname"],
    the6Form: json["6_form"] == null ? null : The6Form.fromJson(json["6_form"]),
    materiaSlots: json["materiaSlots"] == null ? null : json["materiaSlots"],
    mitigation: json["mitigation"] == null ? null : Mitigation.fromJson(json["mitigation"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "id": id == null ? null : id,
    "max_rarity": maxRarity == null ? null : maxRarity,
    "min_rarity": minRarity == null ? null : minRarity,
    "sex": sex == null ? null : sexValues.reverse[sex],
    "stats": stats == null ? null : stats.toJson(),
    "stats_pattern": statsPattern == null ? null : statsPattern,
    "equip": equip == null ? null : List<dynamic>.from(equip.map((x) => x == null ? null : equipValues.reverse[x])),
    "enhancementSkills": enhancementSkills == null ? null : List<dynamic>.from(enhancementSkills.map((x) => x)),
    "jpname": jpname == null ? null : jpname,
    "6_form": the6Form == null ? null : the6Form.toJson(),
    "materiaSlots": materiaSlots == null ? null : materiaSlots,
    "mitigation": mitigation == null ? null : mitigation.toJson(),
  };
}

enum Equip { DAGGER, SWORD, GREAT_SWORD, HAMMER, MACE, LIGHT_SHIELD, HEAVY_SHIELD, HAT, HELM, CLOTHES, LIGHT_ARMOR, HEAVY_ARMOR, KATANA, STAFF, BOW, ROBE, ROD, WHIP, THROWING, AXE, GUN, SPEAR, FIST, HARP }

final equipValues = EnumValues({
  "axe": Equip.AXE,
  "bow": Equip.BOW,
  "clothes": Equip.CLOTHES,
  "dagger": Equip.DAGGER,
  "fist": Equip.FIST,
  "greatSword": Equip.GREAT_SWORD,
  "gun": Equip.GUN,
  "hammer": Equip.HAMMER,
  "harp": Equip.HARP,
  "hat": Equip.HAT,
  "heavyArmor": Equip.HEAVY_ARMOR,
  "heavyShield": Equip.HEAVY_SHIELD,
  "helm": Equip.HELM,
  "katana": Equip.KATANA,
  "lightArmor": Equip.LIGHT_ARMOR,
  "lightShield": Equip.LIGHT_SHIELD,
  "mace": Equip.MACE,
  "robe": Equip.ROBE,
  "rod": Equip.ROD,
  "spear": Equip.SPEAR,
  "staff": Equip.STAFF,
  "sword": Equip.SWORD,
  "throwing": Equip.THROWING,
  "whip": Equip.WHIP
});

class Mitigation {
  int physical;
  int magical;

  Mitigation({
    this.physical,
    this.magical,
  });

  factory Mitigation.fromJson(Map<String, dynamic> json) => Mitigation(
    physical: json["physical"] == null ? null : json["physical"],
    magical: json["magical"] == null ? null : json["magical"],
  );

  Map<String, dynamic> toJson() => {
    "physical": physical == null ? null : physical,
    "magical": magical == null ? null : magical,
  };
}

enum Sex { MALE, FEMALE, OTHER }

final sexValues = EnumValues({
  "female": Sex.FEMALE,
  "male": Sex.MALE,
  "other": Sex.OTHER
});

class Stats {
  MaxStats maxStats;
  MaxStats minStats;
  MaxStats pots;

  Stats({
    this.maxStats,
    this.minStats,
    this.pots,
  });

  factory Stats.fromJson(Map<String, dynamic> json) => Stats(
    maxStats: json["maxStats"] == null ? null : MaxStats.fromJson(json["maxStats"]),
    minStats: json["minStats"] == null ? null : MaxStats.fromJson(json["minStats"]),
    pots: json["pots"] == null ? null : MaxStats.fromJson(json["pots"]),
  );

  Map<String, dynamic> toJson() => {
    "maxStats": maxStats == null ? null : maxStats.toJson(),
    "minStats": minStats == null ? null : minStats.toJson(),
    "pots": pots == null ? null : pots.toJson(),
  };
}

class MaxStats {
  int hp;
  int mp;
  int atk;
  int def;
  int mag;
  int spr;

  MaxStats({
    this.hp,
    this.mp,
    this.atk,
    this.def,
    this.mag,
    this.spr,
  });

  factory MaxStats.fromJson(Map<String, dynamic> json) => MaxStats(
    hp: json["hp"] == null ? null : json["hp"],
    mp: json["mp"] == null ? null : json["mp"],
    atk: json["atk"] == null ? null : json["atk"],
    def: json["def"] == null ? null : json["def"],
    mag: json["mag"] == null ? null : json["mag"],
    spr: json["spr"] == null ? null : json["spr"],
  );

  Map<String, dynamic> toJson() => {
    "hp": hp == null ? null : hp,
    "mp": mp == null ? null : mp,
    "atk": atk == null ? null : atk,
    "def": def == null ? null : def,
    "mag": mag == null ? null : mag,
    "spr": spr == null ? null : spr,
  };
}

class The6Form {
  String name;
  String id;
  bool sixStarForm;
  String maxRarity;
  String minRarity;
  Sex sex;
  Stats stats;
  int statsPattern;
  List<Equip> equip;
  List<String> enhancementSkills;
  String jpname;

  The6Form({
    this.name,
    this.id,
    this.sixStarForm,
    this.maxRarity,
    this.minRarity,
    this.sex,
    this.stats,
    this.statsPattern,
    this.equip,
    this.enhancementSkills,
    this.jpname,
  });

  factory The6Form.fromJson(Map<String, dynamic> json) => The6Form(
    name: json["name"] == null ? null : json["name"],
    id: json["id"] == null ? null : json["id"],
    sixStarForm: json["sixStarForm"] == null ? null : json["sixStarForm"],
    maxRarity: json["max_rarity"] == null ? null : json["max_rarity"],
    minRarity: json["min_rarity"] == null ? null : json["min_rarity"],
    sex: json["sex"] == null ? null : sexValues.map[json["sex"]],
    stats: json["stats"] == null ? null : Stats.fromJson(json["stats"]),
    statsPattern: json["stats_pattern"] == null ? null : json["stats_pattern"],
    equip: json["equip"] == null ? null : List<Equip>.from(json["equip"].map((x) => equipValues.map[x])),
    enhancementSkills: json["enhancementSkills"] == null ? null : List<String>.from(json["enhancementSkills"].map((x) => x)),
    jpname: json["jpname"] == null ? null : json["jpname"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "id": id == null ? null : id,
    "sixStarForm": sixStarForm == null ? null : sixStarForm,
    "max_rarity": maxRarity == null ? null : maxRarity,
    "min_rarity": minRarity == null ? null : minRarity,
    "sex": sex == null ? null : sexValues.reverse[sex],
    "stats": stats == null ? null : stats.toJson(),
    "stats_pattern": statsPattern == null ? null : statsPattern,
    "equip": equip == null ? null : List<dynamic>.from(equip.map((x) => equipValues.reverse[x])),
    "enhancementSkills": enhancementSkills == null ? null : List<dynamic>.from(enhancementSkills.map((x) => x)),
    "jpname": jpname == null ? null : jpname,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
