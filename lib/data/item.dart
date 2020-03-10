// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

import 'dart:convert';

List<Item> itemFromJson(String str) => List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
  String id;
  String name;
  TypeElement type;
  int atk;
  List<Access> access;
  String icon;
  int sortId;
  int rarity;
  List<Ailment> ailments;
  int def;
  List<String> eventNames;
  List<Element> element;
  int maxNumber;
  int itemHp;
  List<Killer> killers;
  Evade evade;
  Map<String, NotStackableSkill> notStackableSkills;
  int mag;
  int spr;
  int itemMag;
  List<String> exclusiveUnits;
  List<AutoCastedSkill> autoCastedSkills;
  List<String> special;
  String tmrUnit;
  int itemMp;
  List<Ailment> resist;
  List<ItemSkill> skills;
  String stmrUnit;
  int lbFillRate;
  Map<String, double> skillEnhancement;
  DualWielding dualWielding;
  int hp;
  int mp;
  int itemDef;
  List<TypeElement> partialDualWield;
  List<dynamic> equipedConditions;
  int itemAtk;
  String wikiEntry;
  int accuracy;
  DamageVariance damageVariance;
  int itemSpr;
  int lbDamage;
  int mpRefresh;
  List<ItemCounterSkill> counterSkills;
  DamageVariance lbPerTurn;
  DualWielding singleWielding;
  SingleWieldingOneHanded singleWieldingOneHanded;
  Map<String, EsperStatsBonus> esperStatsBonus;
  int jumpDamage;
  Map<String, int> evokeDamageBoost;
  int evoMag;
  List<ItemStartOfTurnSkill> startOfTurnSkills;
  int drawAttacks;
  ExclusiveSex exclusiveSex;
  List<TypeElement> allowUseOf;
  Guts guts;

  Item({
    this.id,
    this.name,
    this.type,
    this.atk,
    this.access,
    this.icon,
    this.sortId,
    this.rarity,
    this.ailments,
    this.def,
    this.eventNames,
    this.element,
    this.maxNumber,
    this.itemHp,
    this.killers,
    this.evade,
    this.notStackableSkills,
    this.mag,
    this.spr,
    this.itemMag,
    this.exclusiveUnits,
    this.autoCastedSkills,
    this.special,
    this.tmrUnit,
    this.itemMp,
    this.resist,
    this.skills,
    this.stmrUnit,
    this.lbFillRate,
    this.skillEnhancement,
    this.dualWielding,
    this.hp,
    this.mp,
    this.itemDef,
    this.partialDualWield,
    this.equipedConditions,
    this.itemAtk,
    this.wikiEntry,
    this.accuracy,
    this.damageVariance,
    this.itemSpr,
    this.lbDamage,
    this.mpRefresh,
    this.counterSkills,
    this.lbPerTurn,
    this.singleWielding,
    this.singleWieldingOneHanded,
    this.esperStatsBonus,
    this.jumpDamage,
    this.evokeDamageBoost,
    this.evoMag,
    this.startOfTurnSkills,
    this.drawAttacks,
    this.exclusiveSex,
    this.allowUseOf,
    this.guts,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    type: json["type"] == null ? null : typeElementValues.map[json["type"]],
    atk: json["atk"] == null ? null : json["atk"],
    access: json["access"] == null ? null : List<Access>.from(json["access"].map((x) => accessValues.map[x])),
    icon: json["icon"] == null ? null : json["icon"],
    sortId: json["sortId"] == null ? null : json["sortId"],
    rarity: json["rarity"] == null ? null : json["rarity"],
    ailments: json["ailments"] == null ? null : List<Ailment>.from(json["ailments"].map((x) => Ailment.fromJson(x))),
    def: json["def"] == null ? null : json["def"],
    eventNames: json["eventNames"] == null ? null : List<String>.from(json["eventNames"].map((x) => x)),
    element: json["element"] == null ? null : List<Element>.from(json["element"].map((x) => elementValues.map[x])),
    maxNumber: json["maxNumber"] == null ? null : json["maxNumber"],
    itemHp: json["hp%"] == null ? null : json["hp%"],
    killers: json["killers"] == null ? null : List<Killer>.from(json["killers"].map((x) => Killer.fromJson(x))),
    evade: json["evade"] == null ? null : Evade.fromJson(json["evade"]),
    notStackableSkills: json["notStackableSkills"] == null ? null : Map.from(json["notStackableSkills"]).map((k, v) => MapEntry<String, NotStackableSkill>(k, NotStackableSkill.fromJson(v))),
    mag: json["mag"] == null ? null : json["mag"],
    spr: json["spr"] == null ? null : json["spr"],
    itemMag: json["mag%"] == null ? null : json["mag%"],
    exclusiveUnits: json["exclusiveUnits"] == null ? null : List<String>.from(json["exclusiveUnits"].map((x) => x)),
    autoCastedSkills: json["autoCastedSkills"] == null ? null : List<AutoCastedSkill>.from(json["autoCastedSkills"].map((x) => AutoCastedSkill.fromJson(x))),
    special: json["special"] == null ? null : List<String>.from(json["special"].map((x) => x)),
    tmrUnit: json["tmrUnit"] == null ? null : json["tmrUnit"],
    itemMp: json["mp%"] == null ? null : json["mp%"],
    resist: json["resist"] == null ? null : List<Ailment>.from(json["resist"].map((x) => Ailment.fromJson(x))),
    skills: json["skills"] == null ? null : List<ItemSkill>.from(json["skills"].map((x) => ItemSkill.fromJson(x))),
    stmrUnit: json["stmrUnit"] == null ? null : json["stmrUnit"],
    lbFillRate: json["lbFillRate"] == null ? null : json["lbFillRate"],
    skillEnhancement: json["skillEnhancement"] == null ? null : Map.from(json["skillEnhancement"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
    dualWielding: json["dualWielding"] == null ? null : DualWielding.fromJson(json["dualWielding"]),
    hp: json["hp"] == null ? null : json["hp"],
    mp: json["mp"] == null ? null : json["mp"],
    itemDef: json["def%"] == null ? null : json["def%"],
    partialDualWield: json["partialDualWield"] == null ? null : List<TypeElement>.from(json["partialDualWield"].map((x) => typeElementValues.map[x])),
    equipedConditions: json["equipedConditions"] == null ? null : List<dynamic>.from(json["equipedConditions"].map((x) => x)),
    itemAtk: json["atk%"] == null ? null : json["atk%"],
    wikiEntry: json["wikiEntry"] == null ? null : json["wikiEntry"],
    accuracy: json["accuracy"] == null ? null : json["accuracy"],
    damageVariance: json["damageVariance"] == null ? null : DamageVariance.fromJson(json["damageVariance"]),
    itemSpr: json["spr%"] == null ? null : json["spr%"],
    lbDamage: json["lbDamage"] == null ? null : json["lbDamage"],
    mpRefresh: json["mpRefresh"] == null ? null : json["mpRefresh"],
    counterSkills: json["counterSkills"] == null ? null : List<ItemCounterSkill>.from(json["counterSkills"].map((x) => ItemCounterSkill.fromJson(x))),
    lbPerTurn: json["lbPerTurn"] == null ? null : DamageVariance.fromJson(json["lbPerTurn"]),
    singleWielding: json["singleWielding"] == null ? null : DualWielding.fromJson(json["singleWielding"]),
    singleWieldingOneHanded: json["singleWieldingOneHanded"] == null ? null : SingleWieldingOneHanded.fromJson(json["singleWieldingOneHanded"]),
    esperStatsBonus: json["esperStatsBonus"] == null ? null : Map.from(json["esperStatsBonus"]).map((k, v) => MapEntry<String, EsperStatsBonus>(k, EsperStatsBonus.fromJson(v))),
    jumpDamage: json["jumpDamage"] == null ? null : json["jumpDamage"],
    evokeDamageBoost: json["evokeDamageBoost"] == null ? null : Map.from(json["evokeDamageBoost"]).map((k, v) => MapEntry<String, int>(k, v)),
    evoMag: json["evoMag"] == null ? null : json["evoMag"],
    startOfTurnSkills: json["startOfTurnSkills"] == null ? null : List<ItemStartOfTurnSkill>.from(json["startOfTurnSkills"].map((x) => ItemStartOfTurnSkill.fromJson(x))),
    drawAttacks: json["drawAttacks"] == null ? null : json["drawAttacks"],
    exclusiveSex: json["exclusiveSex"] == null ? null : exclusiveSexValues.map[json["exclusiveSex"]],
    allowUseOf: json["allowUseOf"] == null ? null : List<TypeElement>.from(json["allowUseOf"].map((x) => typeElementValues.map[x])),
    guts: json["guts"] == null ? null : Guts.fromJson(json["guts"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "type": type == null ? null : typeElementValues.reverse[type],
    "atk": atk == null ? null : atk,
    "access": access == null ? null : List<dynamic>.from(access.map((x) => accessValues.reverse[x])),
    "icon": icon == null ? null : icon,
    "sortId": sortId == null ? null : sortId,
    "rarity": rarity == null ? null : rarity,
    "ailments": ailments == null ? null : List<dynamic>.from(ailments.map((x) => x.toJson())),
    "def": def == null ? null : def,
    "eventNames": eventNames == null ? null : List<dynamic>.from(eventNames.map((x) => x)),
    "element": element == null ? null : List<dynamic>.from(element.map((x) => elementValues.reverse[x])),
    "maxNumber": maxNumber == null ? null : maxNumber,
    "hp%": itemHp == null ? null : itemHp,
    "killers": killers == null ? null : List<dynamic>.from(killers.map((x) => x.toJson())),
    "evade": evade == null ? null : evade.toJson(),
    "notStackableSkills": notStackableSkills == null ? null : Map.from(notStackableSkills).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "mag": mag == null ? null : mag,
    "spr": spr == null ? null : spr,
    "mag%": itemMag == null ? null : itemMag,
    "exclusiveUnits": exclusiveUnits == null ? null : List<dynamic>.from(exclusiveUnits.map((x) => x)),
    "autoCastedSkills": autoCastedSkills == null ? null : List<dynamic>.from(autoCastedSkills.map((x) => x.toJson())),
    "special": special == null ? null : List<dynamic>.from(special.map((x) => x)),
    "tmrUnit": tmrUnit == null ? null : tmrUnit,
    "mp%": itemMp == null ? null : itemMp,
    "resist": resist == null ? null : List<dynamic>.from(resist.map((x) => x.toJson())),
    "skills": skills == null ? null : List<dynamic>.from(skills.map((x) => x.toJson())),
    "stmrUnit": stmrUnit == null ? null : stmrUnit,
    "lbFillRate": lbFillRate == null ? null : lbFillRate,
    "skillEnhancement": skillEnhancement == null ? null : Map.from(skillEnhancement).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "dualWielding": dualWielding == null ? null : dualWielding.toJson(),
    "hp": hp == null ? null : hp,
    "mp": mp == null ? null : mp,
    "def%": itemDef == null ? null : itemDef,
    "partialDualWield": partialDualWield == null ? null : List<dynamic>.from(partialDualWield.map((x) => typeElementValues.reverse[x])),
    "equipedConditions": equipedConditions == null ? null : List<dynamic>.from(equipedConditions.map((x) => x)),
    "atk%": itemAtk == null ? null : itemAtk,
    "wikiEntry": wikiEntry == null ? null : wikiEntry,
    "accuracy": accuracy == null ? null : accuracy,
    "damageVariance": damageVariance == null ? null : damageVariance.toJson(),
    "spr%": itemSpr == null ? null : itemSpr,
    "lbDamage": lbDamage == null ? null : lbDamage,
    "mpRefresh": mpRefresh == null ? null : mpRefresh,
    "counterSkills": counterSkills == null ? null : List<dynamic>.from(counterSkills.map((x) => x.toJson())),
    "lbPerTurn": lbPerTurn == null ? null : lbPerTurn.toJson(),
    "singleWielding": singleWielding == null ? null : singleWielding.toJson(),
    "singleWieldingOneHanded": singleWieldingOneHanded == null ? null : singleWieldingOneHanded.toJson(),
    "esperStatsBonus": esperStatsBonus == null ? null : Map.from(esperStatsBonus).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "jumpDamage": jumpDamage == null ? null : jumpDamage,
    "evokeDamageBoost": evokeDamageBoost == null ? null : Map.from(evokeDamageBoost).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "evoMag": evoMag == null ? null : evoMag,
    "startOfTurnSkills": startOfTurnSkills == null ? null : List<dynamic>.from(startOfTurnSkills.map((x) => x.toJson())),
    "drawAttacks": drawAttacks == null ? null : drawAttacks,
    "exclusiveSex": exclusiveSex == null ? null : exclusiveSexValues.reverse[exclusiveSex],
    "allowUseOf": allowUseOf == null ? null : List<dynamic>.from(allowUseOf.map((x) => typeElementValues.reverse[x])),
    "guts": guts == null ? null : guts.toJson(),
  };
}

enum Access { SHOP, RECIPE_CHEST, QUEST, CHEST, RECIPE_QUEST, COLOSSEUM, KEY, EVENT, TMR_3, RECIPE_EVENT, CHOCOBO, TMR_4_EVENT, TRIAL, STMR, TMR_5, NOT_RELEASED_YET, TMR_5_EVENT, PREMIUM, TMR_4, RECIPE_KEY, PARAMETER_MISSION, TMR_3_EVENT, RECIPE, RECIPE_SHOP, RECIPE_COLOSSEUM, TROPHY, RECIPE_TROPHY, UNKNOWN, RECIE_EVENT, EVENT_RECIPE, TMR_1, TMR_2, RECIPE_TRIAL, RECIPE_EXPEDITION }

final accessValues = EnumValues({
  "chest": Access.CHEST,
  "chocobo": Access.CHOCOBO,
  "colosseum": Access.COLOSSEUM,
  "event": Access.EVENT,
  "event-recipe": Access.EVENT_RECIPE,
  "key": Access.KEY,
  "not released yet": Access.NOT_RELEASED_YET,
  "parameter-mission": Access.PARAMETER_MISSION,
  "premium": Access.PREMIUM,
  "quest": Access.QUEST,
  "recie-event": Access.RECIE_EVENT,
  "recipe": Access.RECIPE,
  "recipe-chest": Access.RECIPE_CHEST,
  "recipe-colosseum": Access.RECIPE_COLOSSEUM,
  "recipe-event": Access.RECIPE_EVENT,
  "recipe-expedition": Access.RECIPE_EXPEDITION,
  "recipe-key": Access.RECIPE_KEY,
  "recipe-quest": Access.RECIPE_QUEST,
  "recipe-shop": Access.RECIPE_SHOP,
  "recipe-trial": Access.RECIPE_TRIAL,
  "recipe-trophy": Access.RECIPE_TROPHY,
  "shop": Access.SHOP,
  "STMR": Access.STMR,
  "TMR-1*": Access.TMR_1,
  "TMR-2*": Access.TMR_2,
  "TMR-3*": Access.TMR_3,
  "TMR-3*-event": Access.TMR_3_EVENT,
  "TMR-4*": Access.TMR_4,
  "TMR-4*-event": Access.TMR_4_EVENT,
  "TMR-5*": Access.TMR_5,
  "TMR-5*-event": Access.TMR_5_EVENT,
  "trial": Access.TRIAL,
  "trophy": Access.TROPHY,
  "unknown": Access.UNKNOWN
});

class Ailment {
  Element name;
  int percent;

  Ailment({
    this.name,
    this.percent,
  });

  factory Ailment.fromJson(Map<String, dynamic> json) => Ailment(
    name: json["name"] == null ? null : elementValues.map[json["name"]],
    percent: json["percent"] == null ? null : json["percent"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : elementValues.reverse[name],
    "percent": percent == null ? null : percent,
  };
}

enum Element { SLEEP, SILENCE, PARALYSIS, POISON, BLIND, CONFUSE, DISEASE, PETRIFICATION, FIRE, ICE, LIGHTNING, WATER, WIND, EARTH, LIGHT, DARK, DEATH, CHARM, STOP, BREAK_SPR, BREAK_ATK }

final elementValues = EnumValues({
  "blind": Element.BLIND,
  "break_atk": Element.BREAK_ATK,
  "break_spr": Element.BREAK_SPR,
  "charm": Element.CHARM,
  "confuse": Element.CONFUSE,
  "dark": Element.DARK,
  "death": Element.DEATH,
  "disease": Element.DISEASE,
  "earth": Element.EARTH,
  "fire": Element.FIRE,
  "ice": Element.ICE,
  "light": Element.LIGHT,
  "lightning": Element.LIGHTNING,
  "paralysis": Element.PARALYSIS,
  "petrification": Element.PETRIFICATION,
  "poison": Element.POISON,
  "silence": Element.SILENCE,
  "sleep": Element.SLEEP,
  "stop": Element.STOP,
  "water": Element.WATER,
  "wind": Element.WIND
});

enum TypeElement { DAGGER, SWORD, GREAT_SWORD, KATANA, AXE, HAMMER, MACE, SPEAR, FIST, ROD, STAFF, BOW, GUN, WHIP, THROWING, HARP, LIGHT_SHIELD, HEAVY_SHIELD, HAT, ACCESSORY, HELM, CLOTHES, ROBE, LIGHT_ARMOR, HEAVY_ARMOR, MATERIA, LIGHTNING, LIGHT, WATER }

final typeElementValues = EnumValues({
  "accessory": TypeElement.ACCESSORY,
  "axe": TypeElement.AXE,
  "bow": TypeElement.BOW,
  "clothes": TypeElement.CLOTHES,
  "dagger": TypeElement.DAGGER,
  "fist": TypeElement.FIST,
  "greatSword": TypeElement.GREAT_SWORD,
  "gun": TypeElement.GUN,
  "hammer": TypeElement.HAMMER,
  "harp": TypeElement.HARP,
  "hat": TypeElement.HAT,
  "heavyArmor": TypeElement.HEAVY_ARMOR,
  "heavyShield": TypeElement.HEAVY_SHIELD,
  "helm": TypeElement.HELM,
  "katana": TypeElement.KATANA,
  "light": TypeElement.LIGHT,
  "lightning": TypeElement.LIGHTNING,
  "lightArmor": TypeElement.LIGHT_ARMOR,
  "lightShield": TypeElement.LIGHT_SHIELD,
  "mace": TypeElement.MACE,
  "materia": TypeElement.MATERIA,
  "robe": TypeElement.ROBE,
  "rod": TypeElement.ROD,
  "spear": TypeElement.SPEAR,
  "staff": TypeElement.STAFF,
  "sword": TypeElement.SWORD,
  "throwing": TypeElement.THROWING,
  "water": TypeElement.WATER,
  "whip": TypeElement.WHIP
});

class AutoCastedSkill {
  String id;
  String name;
  SkillIcon icon;
  List<AutoCastedSkillEffect> effects;
  Magic magic;
  SkillType type;
  int mpCost;

  AutoCastedSkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.magic,
    this.type,
    this.mpCost,
  });

  factory AutoCastedSkill.fromJson(Map<String, dynamic> json) => AutoCastedSkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : iconValues.map[json["icon"]],
    effects: json["effects"] == null ? null : List<AutoCastedSkillEffect>.from(json["effects"].map((x) => AutoCastedSkillEffect.fromJson(x))),
    magic: json["magic"] == null ? null : magicValues.map[json["magic"]],
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    mpCost: json["mpCost"] == null ? null : json["mpCost"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : iconValues.reverse[icon],
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "magic": magic == null ? null : magicValues.reverse[magic],
    "type": type == null ? null : skillTypeValues.reverse[type],
    "mpCost": mpCost == null ? null : mpCost,
  };
}

class FluffySkill {
  int id;
  String name;
  String icon;
  List<AutoCastedSkillEffect> effects;
  SkillType type;
  int mpCost;

  FluffySkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.type,
    this.mpCost,
  });

  factory FluffySkill.fromJson(Map<String, dynamic> json) => FluffySkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : json["icon"],
    effects: json["effects"] == null ? null : List<AutoCastedSkillEffect>.from(json["effects"].map((x) => AutoCastedSkillEffect.fromJson(x))),
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    mpCost: json["mpCost"] == null ? null : json["mpCost"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "type": type == null ? null : skillTypeValues.reverse[type],
    "mpCost": mpCost == null ? null : mpCost,
  };
}

class FluffyRandomlyUse {
  FluffySkill skill;
  int percent;

  FluffyRandomlyUse({
    this.skill,
    this.percent,
  });

  factory FluffyRandomlyUse.fromJson(Map<String, dynamic> json) => FluffyRandomlyUse(
    skill: json["skill"] == null ? null : FluffySkill.fromJson(json["skill"]),
    percent: json["percent"] == null ? null : json["percent"],
  );

  Map<String, dynamic> toJson() => {
    "skill": skill == null ? null : skill.toJson(),
    "percent": percent == null ? null : percent,
  };
}

class PurpleEffect {
  Heal healOverTurn;
  Area area;
  Target target;
  DualWielding statsBuff;
  List<Ailment> inflict;
  TentacledDamage damage;
  List<int> frames;
  List<int> repartition;
  FluffyImperil imperil;
  int turns;
  bool dispel;
  DualWielding effectBreak;
  bool noUse;
  int hpSacrifice;
  Heal heal;
  Map<String, int> healPercent;
  List<Element> cureAilments;
  Multicast multicast;
  int physicalMitigation;
  List<Element> imbue;
  int restoreMp;
  List<Evade> killers;
  DamageVariance lbFill;
  List<Ailment> resist;
  int autoReraise;
  List<FluffyRandomlyUse> randomlyUse;
  int globalMitigation;
  CooldownSkill cooldownSkill;
  int cooldownTurns;
  int startTurn;

  PurpleEffect({
    this.healOverTurn,
    this.area,
    this.target,
    this.statsBuff,
    this.inflict,
    this.damage,
    this.frames,
    this.repartition,
    this.imperil,
    this.turns,
    this.dispel,
    this.effectBreak,
    this.noUse,
    this.hpSacrifice,
    this.heal,
    this.healPercent,
    this.cureAilments,
    this.multicast,
    this.physicalMitigation,
    this.imbue,
    this.restoreMp,
    this.killers,
    this.lbFill,
    this.resist,
    this.autoReraise,
    this.randomlyUse,
    this.globalMitigation,
    this.cooldownSkill,
    this.cooldownTurns,
    this.startTurn,
  });

  factory PurpleEffect.fromJson(Map<String, dynamic> json) => PurpleEffect(
    healOverTurn: json["healOverTurn"] == null ? null : Heal.fromJson(json["healOverTurn"]),
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
    statsBuff: json["statsBuff"] == null ? null : DualWielding.fromJson(json["statsBuff"]),
    inflict: json["inflict"] == null ? null : List<Ailment>.from(json["inflict"].map((x) => Ailment.fromJson(x))),
    damage: json["damage"] == null ? null : TentacledDamage.fromJson(json["damage"]),
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x)),
    repartition: json["repartition"] == null ? null : List<int>.from(json["repartition"].map((x) => x)),
    imperil: json["imperil"] == null ? null : FluffyImperil.fromJson(json["imperil"]),
    turns: json["turns"] == null ? null : json["turns"],
    dispel: json["dispel"] == null ? null : json["dispel"],
    effectBreak: json["break"] == null ? null : DualWielding.fromJson(json["break"]),
    noUse: json["noUse"] == null ? null : json["noUse"],
    hpSacrifice: json["hpSacrifice"] == null ? null : json["hpSacrifice"],
    heal: json["heal"] == null ? null : Heal.fromJson(json["heal"]),
    healPercent: json["healPercent"] == null ? null : Map.from(json["healPercent"]).map((k, v) => MapEntry<String, int>(k, v)),
    cureAilments: json["cureAilments"] == null ? null : List<Element>.from(json["cureAilments"].map((x) => elementValues.map[x])),
    multicast: json["multicast"] == null ? null : Multicast.fromJson(json["multicast"]),
    physicalMitigation: json["physicalMitigation"] == null ? null : json["physicalMitigation"],
    imbue: json["imbue"] == null ? null : List<Element>.from(json["imbue"].map((x) => elementValues.map[x])),
    restoreMp: json["restoreMp"] == null ? null : json["restoreMp"],
    killers: json["killers"] == null ? null : List<Evade>.from(json["killers"].map((x) => Evade.fromJson(x))),
    lbFill: json["lbFill"] == null ? null : DamageVariance.fromJson(json["lbFill"]),
    resist: json["resist"] == null ? null : List<Ailment>.from(json["resist"].map((x) => Ailment.fromJson(x))),
    autoReraise: json["autoReraise"] == null ? null : json["autoReraise"],
    randomlyUse: json["randomlyUse"] == null ? null : List<FluffyRandomlyUse>.from(json["randomlyUse"].map((x) => FluffyRandomlyUse.fromJson(x))),
    globalMitigation: json["globalMitigation"] == null ? null : json["globalMitigation"],
    cooldownSkill: json["cooldownSkill"] == null ? null : CooldownSkill.fromJson(json["cooldownSkill"]),
    cooldownTurns: json["cooldownTurns"] == null ? null : json["cooldownTurns"],
    startTurn: json["startTurn"] == null ? null : json["startTurn"],
  );

  Map<String, dynamic> toJson() => {
    "healOverTurn": healOverTurn == null ? null : healOverTurn.toJson(),
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : targetValues.reverse[target],
    "statsBuff": statsBuff == null ? null : statsBuff.toJson(),
    "inflict": inflict == null ? null : List<dynamic>.from(inflict.map((x) => x.toJson())),
    "damage": damage == null ? null : damage.toJson(),
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x)),
    "repartition": repartition == null ? null : List<dynamic>.from(repartition.map((x) => x)),
    "imperil": imperil == null ? null : imperil.toJson(),
    "turns": turns == null ? null : turns,
    "dispel": dispel == null ? null : dispel,
    "break": effectBreak == null ? null : effectBreak.toJson(),
    "noUse": noUse == null ? null : noUse,
    "hpSacrifice": hpSacrifice == null ? null : hpSacrifice,
    "heal": heal == null ? null : heal.toJson(),
    "healPercent": healPercent == null ? null : Map.from(healPercent).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "cureAilments": cureAilments == null ? null : List<dynamic>.from(cureAilments.map((x) => elementValues.reverse[x])),
    "multicast": multicast == null ? null : multicast.toJson(),
    "physicalMitigation": physicalMitigation == null ? null : physicalMitigation,
    "imbue": imbue == null ? null : List<dynamic>.from(imbue.map((x) => elementValues.reverse[x])),
    "restoreMp": restoreMp == null ? null : restoreMp,
    "killers": killers == null ? null : List<dynamic>.from(killers.map((x) => x.toJson())),
    "lbFill": lbFill == null ? null : lbFill.toJson(),
    "resist": resist == null ? null : List<dynamic>.from(resist.map((x) => x.toJson())),
    "autoReraise": autoReraise == null ? null : autoReraise,
    "randomlyUse": randomlyUse == null ? null : List<dynamic>.from(randomlyUse.map((x) => x.toJson())),
    "globalMitigation": globalMitigation == null ? null : globalMitigation,
    "cooldownSkill": cooldownSkill == null ? null : cooldownSkill.toJson(),
    "cooldownTurns": cooldownTurns == null ? null : cooldownTurns,
    "startTurn": startTurn == null ? null : startTurn,
  };
}

class AutoCastedSkillEffect {
  PurpleEffect effect;
  String desc;

  AutoCastedSkillEffect({
    this.effect,
    this.desc,
  });

  factory AutoCastedSkillEffect.fromJson(Map<String, dynamic> json) => AutoCastedSkillEffect(
    effect: json["effect"] == null ? null : PurpleEffect.fromJson(json["effect"]),
    desc: json["desc"] == null ? null : json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "effect": effect == null ? null : effect.toJson(),
    "desc": desc == null ? null : desc,
  };
}

enum SkillType { ABILITY }

final skillTypeValues = EnumValues({
  "ability": SkillType.ABILITY
});

enum Area { ST, AOE, SELF, RND }

final areaValues = EnumValues({
  "AOE": Area.AOE,
  "RND": Area.RND,
  "SELF": Area.SELF,
  "ST": Area.ST
});

class CooldownSkill {
  String id;
  String name;
  String icon;
  List<CooldownSkillEffect> effects;
  List<int> frames;
  Counter move;
  SkillType type;
  int mpCost;

  CooldownSkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.frames,
    this.move,
    this.type,
    this.mpCost,
  });

  factory CooldownSkill.fromJson(Map<String, dynamic> json) => CooldownSkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : json["icon"],
    effects: json["effects"] == null ? null : List<CooldownSkillEffect>.from(json["effects"].map((x) => CooldownSkillEffect.fromJson(x))),
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x)),
    move: json["move"] == null ? null : counterValues.map[json["move"]],
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    mpCost: json["mpCost"] == null ? null : json["mpCost"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x)),
    "move": move == null ? null : counterValues.reverse[move],
    "type": type == null ? null : skillTypeValues.reverse[type],
    "mpCost": mpCost == null ? null : mpCost,
  };
}

class CooldownSkillEffect {
  FluffyEffect effect;
  String desc;

  CooldownSkillEffect({
    this.effect,
    this.desc,
  });

  factory CooldownSkillEffect.fromJson(Map<String, dynamic> json) => CooldownSkillEffect(
    effect: json["effect"] == null ? null : FluffyEffect.fromJson(json["effect"]),
    desc: json["desc"] == null ? null : json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "effect": effect == null ? null : effect.toJson(),
    "desc": desc == null ? null : desc,
  };
}

class FluffyEffect {
  Break effectBreak;
  int turns;
  Area area;
  Target target;
  PurpleDamage damage;
  List<int> frames;
  List<int> repartition;
  bool noUse;
  PurpleImperil imperil;
  StatsBuff statsBuff;
  int restoreMp;
  DamageVariance lbFill;
  Heal heal;
  List<PurpleRandomlyUse> randomlyUse;
  Map<String, int> healPercent;
  List<Ailment> inflict;
  Heal healOverTurn;
  int globalMitigation;

  FluffyEffect({
    this.effectBreak,
    this.turns,
    this.area,
    this.target,
    this.damage,
    this.frames,
    this.repartition,
    this.noUse,
    this.imperil,
    this.statsBuff,
    this.restoreMp,
    this.lbFill,
    this.heal,
    this.randomlyUse,
    this.healPercent,
    this.inflict,
    this.healOverTurn,
    this.globalMitigation,
  });

  factory FluffyEffect.fromJson(Map<String, dynamic> json) => FluffyEffect(
    effectBreak: json["break"] == null ? null : Break.fromJson(json["break"]),
    turns: json["turns"] == null ? null : json["turns"],
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
    damage: json["damage"] == null ? null : PurpleDamage.fromJson(json["damage"]),
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x)),
    repartition: json["repartition"] == null ? null : List<int>.from(json["repartition"].map((x) => x)),
    noUse: json["noUse"] == null ? null : json["noUse"],
    imperil: json["imperil"] == null ? null : PurpleImperil.fromJson(json["imperil"]),
    statsBuff: json["statsBuff"] == null ? null : StatsBuff.fromJson(json["statsBuff"]),
    restoreMp: json["restoreMp"] == null ? null : json["restoreMp"],
    lbFill: json["lbFill"] == null ? null : DamageVariance.fromJson(json["lbFill"]),
    heal: json["heal"] == null ? null : Heal.fromJson(json["heal"]),
    randomlyUse: json["randomlyUse"] == null ? null : List<PurpleRandomlyUse>.from(json["randomlyUse"].map((x) => PurpleRandomlyUse.fromJson(x))),
    healPercent: json["healPercent"] == null ? null : Map.from(json["healPercent"]).map((k, v) => MapEntry<String, int>(k, v)),
    inflict: json["inflict"] == null ? null : List<Ailment>.from(json["inflict"].map((x) => Ailment.fromJson(x))),
    healOverTurn: json["healOverTurn"] == null ? null : Heal.fromJson(json["healOverTurn"]),
    globalMitigation: json["globalMitigation"] == null ? null : json["globalMitigation"],
  );

  Map<String, dynamic> toJson() => {
    "break": effectBreak == null ? null : effectBreak.toJson(),
    "turns": turns == null ? null : turns,
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : targetValues.reverse[target],
    "damage": damage == null ? null : damage.toJson(),
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x)),
    "repartition": repartition == null ? null : List<dynamic>.from(repartition.map((x) => x)),
    "noUse": noUse == null ? null : noUse,
    "imperil": imperil == null ? null : imperil.toJson(),
    "statsBuff": statsBuff == null ? null : statsBuff.toJson(),
    "restoreMp": restoreMp == null ? null : restoreMp,
    "lbFill": lbFill == null ? null : lbFill.toJson(),
    "heal": heal == null ? null : heal.toJson(),
    "randomlyUse": randomlyUse == null ? null : List<dynamic>.from(randomlyUse.map((x) => x.toJson())),
    "healPercent": healPercent == null ? null : Map.from(healPercent).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "inflict": inflict == null ? null : List<dynamic>.from(inflict.map((x) => x.toJson())),
    "healOverTurn": healOverTurn == null ? null : healOverTurn.toJson(),
    "globalMitigation": globalMitigation == null ? null : globalMitigation,
  };
}

class PurpleDamage {
  Counter mecanism;
  DamageType damageType;
  double coef;
  List<Element> elements;
  PurpleIgnore ignore;

  PurpleDamage({
    this.mecanism,
    this.damageType,
    this.coef,
    this.elements,
    this.ignore,
  });

  factory PurpleDamage.fromJson(Map<String, dynamic> json) => PurpleDamage(
    mecanism: json["mecanism"] == null ? null : counterValues.map[json["mecanism"]],
    damageType: json["damageType"] == null ? null : damageTypeValues.map[json["damageType"]],
    coef: json["coef"] == null ? null : json["coef"].toDouble(),
    elements: json["elements"] == null ? null : List<Element>.from(json["elements"].map((x) => elementValues.map[x])),
    ignore: json["ignore"] == null ? null : PurpleIgnore.fromJson(json["ignore"]),
  );

  Map<String, dynamic> toJson() => {
    "mecanism": mecanism == null ? null : counterValues.reverse[mecanism],
    "damageType": damageType == null ? null : damageTypeValues.reverse[damageType],
    "coef": coef == null ? null : coef,
    "elements": elements == null ? null : List<dynamic>.from(elements.map((x) => elementValues.reverse[x])),
    "ignore": ignore == null ? null : ignore.toJson(),
  };
}

enum DamageType { BODY, MIND }

final damageTypeValues = EnumValues({
  "body": DamageType.BODY,
  "mind": DamageType.MIND
});

class PurpleIgnore {
  int spr;
  int def;

  PurpleIgnore({
    this.spr,
    this.def,
  });

  factory PurpleIgnore.fromJson(Map<String, dynamic> json) => PurpleIgnore(
    spr: json["spr"] == null ? null : json["spr"],
    def: json["def"] == null ? null : json["def"],
  );

  Map<String, dynamic> toJson() => {
    "spr": spr == null ? null : spr,
    "def": def == null ? null : def,
  };
}

enum Counter { PHYSICAL, HYBRID, MAGICAL, NONE }

final counterValues = EnumValues({
  "hybrid": Counter.HYBRID,
  "magical": Counter.MAGICAL,
  "none": Counter.NONE,
  "physical": Counter.PHYSICAL
});

class Break {
  int def;
  int atk;
  int spr;
  int mag;

  Break({
    this.def,
    this.atk,
    this.spr,
    this.mag,
  });

  factory Break.fromJson(Map<String, dynamic> json) => Break(
    def: json["def"] == null ? null : json["def"],
    atk: json["atk"] == null ? null : json["atk"],
    spr: json["spr"] == null ? null : json["spr"],
    mag: json["mag"] == null ? null : json["mag"],
  );

  Map<String, dynamic> toJson() => {
    "def": def == null ? null : def,
    "atk": atk == null ? null : atk,
    "spr": spr == null ? null : spr,
    "mag": mag == null ? null : mag,
  };
}

class Heal {
  int base;
  double coef;

  Heal({
    this.base,
    this.coef,
  });

  factory Heal.fromJson(Map<String, dynamic> json) => Heal(
    base: json["base"] == null ? null : json["base"],
    coef: json["coef"] == null ? null : json["coef"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "base": base == null ? null : base,
    "coef": coef == null ? null : coef,
  };
}

class PurpleImperil {
  int fire;

  PurpleImperil({
    this.fire,
  });

  factory PurpleImperil.fromJson(Map<String, dynamic> json) => PurpleImperil(
    fire: json["fire"] == null ? null : json["fire"],
  );

  Map<String, dynamic> toJson() => {
    "fire": fire == null ? null : fire,
  };
}

class DamageVariance {
  double min;
  double max;

  DamageVariance({
    this.min,
    this.max,
  });

  factory DamageVariance.fromJson(Map<String, dynamic> json) => DamageVariance(
    min: json["min"] == null ? null : json["min"].toDouble(),
    max: json["max"] == null ? null : json["max"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "min": min == null ? null : min,
    "max": max == null ? null : max,
  };
}

class PurpleRandomlyUse {
  PurpleSkill skill;
  int percent;

  PurpleRandomlyUse({
    this.skill,
    this.percent,
  });

  factory PurpleRandomlyUse.fromJson(Map<String, dynamic> json) => PurpleRandomlyUse(
    skill: json["skill"] == null ? null : PurpleSkill.fromJson(json["skill"]),
    percent: json["percent"] == null ? null : json["percent"],
  );

  Map<String, dynamic> toJson() => {
    "skill": skill == null ? null : skill.toJson(),
    "percent": percent == null ? null : percent,
  };
}

class PurpleSkill {
  int id;
  String name;
  String icon;
  List<TentacledEffect> effects;
  SkillType type;

  PurpleSkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.type,
  });

  factory PurpleSkill.fromJson(Map<String, dynamic> json) => PurpleSkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : json["icon"],
    effects: json["effects"] == null ? null : List<TentacledEffect>.from(json["effects"].map((x) => TentacledEffect.fromJson(x))),
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "type": type == null ? null : skillTypeValues.reverse[type],
  };
}

class TentacledEffect {
  StickyEffect effect;
  String desc;

  TentacledEffect({
    this.effect,
    this.desc,
  });

  factory TentacledEffect.fromJson(Map<String, dynamic> json) => TentacledEffect(
    effect: json["effect"] == null ? null : StickyEffect.fromJson(json["effect"]),
    desc: json["desc"] == null ? null : json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "effect": effect == null ? null : effect.toJson(),
    "desc": desc == null ? null : desc,
  };
}

class StickyEffect {
  bool noUse;
  Area area;
  Area target;
  int restoreMp;
  Map<String, int> statsBuff;
  int turns;
  GainSkills gainSkills;

  StickyEffect({
    this.noUse,
    this.area,
    this.target,
    this.restoreMp,
    this.statsBuff,
    this.turns,
    this.gainSkills,
  });

  factory StickyEffect.fromJson(Map<String, dynamic> json) => StickyEffect(
    noUse: json["noUse"] == null ? null : json["noUse"],
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : areaValues.map[json["target"]],
    restoreMp: json["restoreMp"] == null ? null : json["restoreMp"],
    statsBuff: json["statsBuff"] == null ? null : Map.from(json["statsBuff"]).map((k, v) => MapEntry<String, int>(k, v)),
    turns: json["turns"] == null ? null : json["turns"],
    gainSkills: json["gainSkills"] == null ? null : GainSkills.fromJson(json["gainSkills"]),
  );

  Map<String, dynamic> toJson() => {
    "noUse": noUse == null ? null : noUse,
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : areaValues.reverse[target],
    "restoreMp": restoreMp == null ? null : restoreMp,
    "statsBuff": statsBuff == null ? null : Map.from(statsBuff).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "turns": turns == null ? null : turns,
    "gainSkills": gainSkills == null ? null : gainSkills.toJson(),
  };
}

class GainSkills {
  List<GainSkillsSkill> skills;

  GainSkills({
    this.skills,
  });

  factory GainSkills.fromJson(Map<String, dynamic> json) => GainSkills(
    skills: json["skills"] == null ? null : List<GainSkillsSkill>.from(json["skills"].map((x) => GainSkillsSkill.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "skills": skills == null ? null : List<dynamic>.from(skills.map((x) => x.toJson())),
  };
}

class GainSkillsSkill {
  String id;
  String name;
  String icon;
  List<IndigoEffect> effects;
  List<int> frames;
  Counter move;
  SkillType type;
  int mpCost;
  String chainFamily;

  GainSkillsSkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.frames,
    this.move,
    this.type,
    this.mpCost,
    this.chainFamily,
  });

  factory GainSkillsSkill.fromJson(Map<String, dynamic> json) => GainSkillsSkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : json["icon"],
    effects: json["effects"] == null ? null : List<IndigoEffect>.from(json["effects"].map((x) => IndigoEffect.fromJson(x))),
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x)),
    move: json["move"] == null ? null : counterValues.map[json["move"]],
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    mpCost: json["mpCost"] == null ? null : json["mpCost"],
    chainFamily: json["chainFamily"] == null ? null : json["chainFamily"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x)),
    "move": move == null ? null : counterValues.reverse[move],
    "type": type == null ? null : skillTypeValues.reverse[type],
    "mpCost": mpCost == null ? null : mpCost,
    "chainFamily": chainFamily == null ? null : chainFamily,
  };
}

class IndigoEffect {
  IndecentEffect effect;
  String desc;

  IndigoEffect({
    this.effect,
    this.desc,
  });

  factory IndigoEffect.fromJson(Map<String, dynamic> json) => IndigoEffect(
    effect: json["effect"] == null ? null : IndecentEffect.fromJson(json["effect"]),
    desc: json["desc"] == null ? null : json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "effect": effect == null ? null : effect.toJson(),
    "desc": desc == null ? null : desc,
  };
}

class IndecentEffect {
  FluffyDamage damage;
  Area area;
  Target target;
  List<int> frames;
  List<int> repartition;

  IndecentEffect({
    this.damage,
    this.area,
    this.target,
    this.frames,
    this.repartition,
  });

  factory IndecentEffect.fromJson(Map<String, dynamic> json) => IndecentEffect(
    damage: json["damage"] == null ? null : FluffyDamage.fromJson(json["damage"]),
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x)),
    repartition: json["repartition"] == null ? null : List<int>.from(json["repartition"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "damage": damage == null ? null : damage.toJson(),
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : targetValues.reverse[target],
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x)),
    "repartition": repartition == null ? null : List<dynamic>.from(repartition.map((x) => x)),
  };
}

class FluffyDamage {
  Counter mecanism;
  DamageType damageType;
  double coef;
  FluffyIgnore ignore;

  FluffyDamage({
    this.mecanism,
    this.damageType,
    this.coef,
    this.ignore,
  });

  factory FluffyDamage.fromJson(Map<String, dynamic> json) => FluffyDamage(
    mecanism: json["mecanism"] == null ? null : counterValues.map[json["mecanism"]],
    damageType: json["damageType"] == null ? null : damageTypeValues.map[json["damageType"]],
    coef: json["coef"] == null ? null : json["coef"].toDouble(),
    ignore: json["ignore"] == null ? null : FluffyIgnore.fromJson(json["ignore"]),
  );

  Map<String, dynamic> toJson() => {
    "mecanism": mecanism == null ? null : counterValues.reverse[mecanism],
    "damageType": damageType == null ? null : damageTypeValues.reverse[damageType],
    "coef": coef == null ? null : coef,
    "ignore": ignore == null ? null : ignore.toJson(),
  };
}

class FluffyIgnore {
  int def;

  FluffyIgnore({
    this.def,
  });

  factory FluffyIgnore.fromJson(Map<String, dynamic> json) => FluffyIgnore(
    def: json["def"] == null ? null : json["def"],
  );

  Map<String, dynamic> toJson() => {
    "def": def == null ? null : def,
  };
}

enum Target { ENEMY, SELF, ALLY, ANY }

final targetValues = EnumValues({
  "ALLY": Target.ALLY,
  "ANY": Target.ANY,
  "ENEMY": Target.ENEMY,
  "SELF": Target.SELF
});

class StatsBuff {
  int atk;
  int spr;

  StatsBuff({
    this.atk,
    this.spr,
  });

  factory StatsBuff.fromJson(Map<String, dynamic> json) => StatsBuff(
    atk: json["atk"] == null ? null : json["atk"],
    spr: json["spr"] == null ? null : json["spr"],
  );

  Map<String, dynamic> toJson() => {
    "atk": atk == null ? null : atk,
    "spr": spr == null ? null : spr,
  };
}

class TentacledDamage {
  Counter mecanism;
  DamageType damageType;
  double coef;
  List<Element> elements;
  PurpleIgnore ignore;
  Use use;
  bool combo;
  int minTime;
  int maxTime;
  double stack;
  int maxStack;
  bool jump;
  int delay;

  TentacledDamage({
    this.mecanism,
    this.damageType,
    this.coef,
    this.elements,
    this.ignore,
    this.use,
    this.combo,
    this.minTime,
    this.maxTime,
    this.stack,
    this.maxStack,
    this.jump,
    this.delay,
  });

  factory TentacledDamage.fromJson(Map<String, dynamic> json) => TentacledDamage(
    mecanism: json["mecanism"] == null ? null : counterValues.map[json["mecanism"]],
    damageType: json["damageType"] == null ? null : damageTypeValues.map[json["damageType"]],
    coef: json["coef"] == null ? null : json["coef"].toDouble(),
    elements: json["elements"] == null ? null : List<Element>.from(json["elements"].map((x) => elementValues.map[x])),
    ignore: json["ignore"] == null ? null : PurpleIgnore.fromJson(json["ignore"]),
    use: json["use"] == null ? null : Use.fromJson(json["use"]),
    combo: json["combo"] == null ? null : json["combo"],
    minTime: json["minTime"] == null ? null : json["minTime"],
    maxTime: json["maxTime"] == null ? null : json["maxTime"],
    stack: json["stack"] == null ? null : json["stack"].toDouble(),
    maxStack: json["maxStack"] == null ? null : json["maxStack"],
    jump: json["jump"] == null ? null : json["jump"],
    delay: json["delay"] == null ? null : json["delay"],
  );

  Map<String, dynamic> toJson() => {
    "mecanism": mecanism == null ? null : counterValues.reverse[mecanism],
    "damageType": damageType == null ? null : damageTypeValues.reverse[damageType],
    "coef": coef == null ? null : coef,
    "elements": elements == null ? null : List<dynamic>.from(elements.map((x) => elementValues.reverse[x])),
    "ignore": ignore == null ? null : ignore.toJson(),
    "use": use == null ? null : use.toJson(),
    "combo": combo == null ? null : combo,
    "minTime": minTime == null ? null : minTime,
    "maxTime": maxTime == null ? null : maxTime,
    "stack": stack == null ? null : stack,
    "maxStack": maxStack == null ? null : maxStack,
    "jump": jump == null ? null : jump,
    "delay": delay == null ? null : delay,
  };
}

class Use {
  String stat;
  int percent;
  int max;

  Use({
    this.stat,
    this.percent,
    this.max,
  });

  factory Use.fromJson(Map<String, dynamic> json) => Use(
    stat: json["stat"] == null ? null : json["stat"],
    percent: json["percent"] == null ? null : json["percent"],
    max: json["max"] == null ? null : json["max"],
  );

  Map<String, dynamic> toJson() => {
    "stat": stat == null ? null : stat,
    "percent": percent == null ? null : percent,
    "max": max == null ? null : max,
  };
}

class DualWielding {
  int def;
  int atk;
  int spr;
  int mag;
  int accuracy;

  DualWielding({
    this.def,
    this.atk,
    this.spr,
    this.mag,
    this.accuracy,
  });

  factory DualWielding.fromJson(Map<String, dynamic> json) => DualWielding(
    def: json["def"] == null ? null : json["def"],
    atk: json["atk"] == null ? null : json["atk"],
    spr: json["spr"] == null ? null : json["spr"],
    mag: json["mag"] == null ? null : json["mag"],
    accuracy: json["accuracy"] == null ? null : json["accuracy"],
  );

  Map<String, dynamic> toJson() => {
    "def": def == null ? null : def,
    "atk": atk == null ? null : atk,
    "spr": spr == null ? null : spr,
    "mag": mag == null ? null : mag,
    "accuracy": accuracy == null ? null : accuracy,
  };
}

class FluffyImperil {
  int dark;
  int lightning;
  int fire;
  int water;
  int wind;
  int earth;
  int ice;
  int light;

  FluffyImperil({
    this.dark,
    this.lightning,
    this.fire,
    this.water,
    this.wind,
    this.earth,
    this.ice,
    this.light,
  });

  factory FluffyImperil.fromJson(Map<String, dynamic> json) => FluffyImperil(
    dark: json["dark"] == null ? null : json["dark"],
    lightning: json["lightning"] == null ? null : json["lightning"],
    fire: json["fire"] == null ? null : json["fire"],
    water: json["water"] == null ? null : json["water"],
    wind: json["wind"] == null ? null : json["wind"],
    earth: json["earth"] == null ? null : json["earth"],
    ice: json["ice"] == null ? null : json["ice"],
    light: json["light"] == null ? null : json["light"],
  );

  Map<String, dynamic> toJson() => {
    "dark": dark == null ? null : dark,
    "lightning": lightning == null ? null : lightning,
    "fire": fire == null ? null : fire,
    "water": water == null ? null : water,
    "wind": wind == null ? null : wind,
    "earth": earth == null ? null : earth,
    "ice": ice == null ? null : ice,
    "light": light == null ? null : light,
  };
}

class Evade {
  int physical;
  int magical;

  Evade({
    this.physical,
    this.magical,
  });

  factory Evade.fromJson(Map<String, dynamic> json) => Evade(
    physical: json["physical"] == null ? null : json["physical"],
    magical: json["magical"] == null ? null : json["magical"],
  );

  Map<String, dynamic> toJson() => {
    "physical": physical == null ? null : physical,
    "magical": magical == null ? null : magical,
  };
}

class Multicast {
  int time;
  String type;

  Multicast({
    this.time,
    this.type,
  });

  factory Multicast.fromJson(Map<String, dynamic> json) => Multicast(
    time: json["time"] == null ? null : json["time"],
    type: json["type"] == null ? null : json["type"],
  );

  Map<String, dynamic> toJson() => {
    "time": time == null ? null : time,
    "type": type == null ? null : type,
  };
}

enum SkillIcon { ABILITY_4_PNG, ABILITY_77_PNG, ABILITY_98_PNG }

final iconValues = EnumValues({
  "ability_4.png": SkillIcon.ABILITY_4_PNG,
  "ability_77.png": SkillIcon.ABILITY_77_PNG,
  "ability_98.png": SkillIcon.ABILITY_98_PNG
});

enum Magic { WHITE, GREEN, BLACK }

final magicValues = EnumValues({
  "black": Magic.BLACK,
  "green": Magic.GREEN,
  "white": Magic.WHITE
});

class ItemCounterSkill {
  Counter counter;
  int chance;
  TentacledSkill skill;
  int maxTime;

  ItemCounterSkill({
    this.counter,
    this.chance,
    this.skill,
    this.maxTime,
  });

  factory ItemCounterSkill.fromJson(Map<String, dynamic> json) => ItemCounterSkill(
    counter: json["counter"] == null ? null : counterValues.map[json["counter"]],
    chance: json["chance"] == null ? null : json["chance"],
    skill: json["skill"] == null ? null : TentacledSkill.fromJson(json["skill"]),
    maxTime: json["maxTime"] == null ? null : json["maxTime"],
  );

  Map<String, dynamic> toJson() => {
    "counter": counter == null ? null : counterValues.reverse[counter],
    "chance": chance == null ? null : chance,
    "skill": skill == null ? null : skill.toJson(),
    "maxTime": maxTime == null ? null : maxTime,
  };
}

class TentacledSkill {
  String id;
  String name;
  String icon;
  List<CooldownSkillEffect> effects;
  SkillType type;
  List<int> frames;
  Counter move;
  String chainFamily;

  TentacledSkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.type,
    this.frames,
    this.move,
    this.chainFamily,
  });

  factory TentacledSkill.fromJson(Map<String, dynamic> json) => TentacledSkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : json["icon"],
    effects: json["effects"] == null ? null : List<CooldownSkillEffect>.from(json["effects"].map((x) => CooldownSkillEffect.fromJson(x))),
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x)),
    move: json["move"] == null ? null : counterValues.map[json["move"]],
    chainFamily: json["chainFamily"] == null ? null : json["chainFamily"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "type": type == null ? null : skillTypeValues.reverse[type],
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x)),
    "move": move == null ? null : counterValues.reverse[move],
    "chainFamily": chainFamily == null ? null : chainFamily,
  };
}

class EsperStatsBonus {
  int hp;
  int mp;
  int atk;
  int def;
  int mag;
  int spr;

  EsperStatsBonus({
    this.hp,
    this.mp,
    this.atk,
    this.def,
    this.mag,
    this.spr,
  });

  factory EsperStatsBonus.fromJson(Map<String, dynamic> json) => EsperStatsBonus(
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

enum ExclusiveSex { FEMALE, MALE }

final exclusiveSexValues = EnumValues({
  "female": ExclusiveSex.FEMALE,
  "male": ExclusiveSex.MALE
});

class Guts {
  int ifHpOver;
  int chance;
  int time;

  Guts({
    this.ifHpOver,
    this.chance,
    this.time,
  });

  factory Guts.fromJson(Map<String, dynamic> json) => Guts(
    ifHpOver: json["ifHpOver"] == null ? null : json["ifHpOver"],
    chance: json["chance"] == null ? null : json["chance"],
    time: json["time"] == null ? null : json["time"],
  );

  Map<String, dynamic> toJson() => {
    "ifHpOver": ifHpOver == null ? null : ifHpOver,
    "chance": chance == null ? null : chance,
    "time": time == null ? null : time,
  };
}

class Killer {
  Name name;
  int physical;
  int magical;

  Killer({
    this.name,
    this.physical,
    this.magical,
  });

  factory Killer.fromJson(Map<String, dynamic> json) => Killer(
    name: json["name"] == null ? null : nameValues.map[json["name"]],
    physical: json["physical"] == null ? null : json["physical"],
    magical: json["magical"] == null ? null : json["magical"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : nameValues.reverse[name],
    "physical": physical == null ? null : physical,
    "magical": magical == null ? null : magical,
  };
}

enum Name { AQUATIC, BEAST, MACHINE, DEMON, HUMAN, PLANT, UNDEAD, STONE, BIRD, BUG, DRAGON, SPIRIT }

final nameValues = EnumValues({
  "aquatic": Name.AQUATIC,
  "beast": Name.BEAST,
  "bird": Name.BIRD,
  "bug": Name.BUG,
  "demon": Name.DEMON,
  "dragon": Name.DRAGON,
  "human": Name.HUMAN,
  "machine": Name.MACHINE,
  "plant": Name.PLANT,
  "spirit": Name.SPIRIT,
  "stone": Name.STONE,
  "undead": Name.UNDEAD
});

class NotStackableSkill {
  Evade evade;
  int def;
  List<NotStackableSkillStartOfTurnSkill> startOfTurnSkills;
  DamageVariance lbPerTurn;
  List<NotStackableSkillCounterSkill> counterSkills;
  int mag;
  int atk;
  int evoMag;
  int drawAttacks;
  SingleWielding singleWielding;
  List<Ailment> resist;
  NotStackableSkillDualWielding dualWielding;

  NotStackableSkill({
    this.evade,
    this.def,
    this.startOfTurnSkills,
    this.lbPerTurn,
    this.counterSkills,
    this.mag,
    this.atk,
    this.evoMag,
    this.drawAttacks,
    this.singleWielding,
    this.resist,
    this.dualWielding,
  });

  factory NotStackableSkill.fromJson(Map<String, dynamic> json) => NotStackableSkill(
    evade: json["evade"] == null ? null : Evade.fromJson(json["evade"]),
    def: json["def%"] == null ? null : json["def%"],
    startOfTurnSkills: json["startOfTurnSkills"] == null ? null : List<NotStackableSkillStartOfTurnSkill>.from(json["startOfTurnSkills"].map((x) => NotStackableSkillStartOfTurnSkill.fromJson(x))),
    lbPerTurn: json["lbPerTurn"] == null ? null : DamageVariance.fromJson(json["lbPerTurn"]),
    counterSkills: json["counterSkills"] == null ? null : List<NotStackableSkillCounterSkill>.from(json["counterSkills"].map((x) => NotStackableSkillCounterSkill.fromJson(x))),
    mag: json["mag%"] == null ? null : json["mag%"],
    atk: json["atk%"] == null ? null : json["atk%"],
    evoMag: json["evoMag"] == null ? null : json["evoMag"],
    drawAttacks: json["drawAttacks"] == null ? null : json["drawAttacks"],
    singleWielding: json["singleWielding"] == null ? null : SingleWielding.fromJson(json["singleWielding"]),
    resist: json["resist"] == null ? null : List<Ailment>.from(json["resist"].map((x) => Ailment.fromJson(x))),
    dualWielding: json["dualWielding"] == null ? null : NotStackableSkillDualWielding.fromJson(json["dualWielding"]),
  );

  Map<String, dynamic> toJson() => {
    "evade": evade == null ? null : evade.toJson(),
    "def%": def == null ? null : def,
    "startOfTurnSkills": startOfTurnSkills == null ? null : List<dynamic>.from(startOfTurnSkills.map((x) => x.toJson())),
    "lbPerTurn": lbPerTurn == null ? null : lbPerTurn.toJson(),
    "counterSkills": counterSkills == null ? null : List<dynamic>.from(counterSkills.map((x) => x.toJson())),
    "mag%": mag == null ? null : mag,
    "atk%": atk == null ? null : atk,
    "evoMag": evoMag == null ? null : evoMag,
    "drawAttacks": drawAttacks == null ? null : drawAttacks,
    "singleWielding": singleWielding == null ? null : singleWielding.toJson(),
    "resist": resist == null ? null : List<dynamic>.from(resist.map((x) => x.toJson())),
    "dualWielding": dualWielding == null ? null : dualWielding.toJson(),
  };
}

class NotStackableSkillCounterSkill {
  Counter counter;
  int chance;
  GainSkillsSkill skill;
  int maxTime;

  NotStackableSkillCounterSkill({
    this.counter,
    this.chance,
    this.skill,
    this.maxTime,
  });

  factory NotStackableSkillCounterSkill.fromJson(Map<String, dynamic> json) => NotStackableSkillCounterSkill(
    counter: json["counter"] == null ? null : counterValues.map[json["counter"]],
    chance: json["chance"] == null ? null : json["chance"],
    skill: json["skill"] == null ? null : GainSkillsSkill.fromJson(json["skill"]),
    maxTime: json["maxTime"] == null ? null : json["maxTime"],
  );

  Map<String, dynamic> toJson() => {
    "counter": counter == null ? null : counterValues.reverse[counter],
    "chance": chance == null ? null : chance,
    "skill": skill == null ? null : skill.toJson(),
    "maxTime": maxTime == null ? null : maxTime,
  };
}

class NotStackableSkillDualWielding {
  int atk;

  NotStackableSkillDualWielding({
    this.atk,
  });

  factory NotStackableSkillDualWielding.fromJson(Map<String, dynamic> json) => NotStackableSkillDualWielding(
    atk: json["atk"] == null ? null : json["atk"],
  );

  Map<String, dynamic> toJson() => {
    "atk": atk == null ? null : atk,
  };
}

class SingleWielding {
  int atk;
  int accuracy;

  SingleWielding({
    this.atk,
    this.accuracy,
  });

  factory SingleWielding.fromJson(Map<String, dynamic> json) => SingleWielding(
    atk: json["atk"] == null ? null : json["atk"],
    accuracy: json["accuracy"] == null ? null : json["accuracy"],
  );

  Map<String, dynamic> toJson() => {
    "atk": atk == null ? null : atk,
    "accuracy": accuracy == null ? null : accuracy,
  };
}

class NotStackableSkillStartOfTurnSkill {
  int chance;
  StickySkill skill;

  NotStackableSkillStartOfTurnSkill({
    this.chance,
    this.skill,
  });

  factory NotStackableSkillStartOfTurnSkill.fromJson(Map<String, dynamic> json) => NotStackableSkillStartOfTurnSkill(
    chance: json["chance"] == null ? null : json["chance"],
    skill: json["skill"] == null ? null : StickySkill.fromJson(json["skill"]),
  );

  Map<String, dynamic> toJson() => {
    "chance": chance == null ? null : chance,
    "skill": skill == null ? null : skill.toJson(),
  };
}

class StickySkill {
  int id;
  String name;
  SkillIcon icon;
  List<AutoCastedSkillEffect> effects;
  SkillType type;

  StickySkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.type,
  });

  factory StickySkill.fromJson(Map<String, dynamic> json) => StickySkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : iconValues.map[json["icon"]],
    effects: json["effects"] == null ? null : List<AutoCastedSkillEffect>.from(json["effects"].map((x) => AutoCastedSkillEffect.fromJson(x))),
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : iconValues.reverse[icon],
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "type": type == null ? null : skillTypeValues.reverse[type],
  };
}

class SingleWieldingOneHanded {
  int atk;
  int accuracy;
  int mag;

  SingleWieldingOneHanded({
    this.atk,
    this.accuracy,
    this.mag,
  });

  factory SingleWieldingOneHanded.fromJson(Map<String, dynamic> json) => SingleWieldingOneHanded(
    atk: json["atk"] == null ? null : json["atk"],
    accuracy: json["accuracy"] == null ? null : json["accuracy"],
    mag: json["mag"] == null ? null : json["mag"],
  );

  Map<String, dynamic> toJson() => {
    "atk": atk == null ? null : atk,
    "accuracy": accuracy == null ? null : accuracy,
    "mag": mag == null ? null : mag,
  };
}

class ItemSkill {
  dynamic id;
  String name;
  String icon;
  List<AutoCastedSkillEffect> effects;
  SkillType type;
  int mpCost;
  List<int> frames;
  String chainFamily;
  Move move;
  Magic magic;

  ItemSkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.type,
    this.mpCost,
    this.frames,
    this.chainFamily,
    this.move,
    this.magic,
  });

  factory ItemSkill.fromJson(Map<String, dynamic> json) => ItemSkill(
    id: json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : json["icon"],
    effects: json["effects"] == null ? null : List<AutoCastedSkillEffect>.from(json["effects"].map((x) => AutoCastedSkillEffect.fromJson(x))),
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    mpCost: json["mpCost"] == null ? null : json["mpCost"],
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x == null ? null : x)),
    chainFamily: json["chainFamily"] == null ? null : json["chainFamily"],
    move: json["move"] == null ? null : moveValues.map[json["move"]],
    magic: json["magic"] == null ? null : magicValues.map[json["magic"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "type": type == null ? null : skillTypeValues.reverse[type],
    "mpCost": mpCost == null ? null : mpCost,
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x == null ? null : x)),
    "chainFamily": chainFamily == null ? null : chainFamily,
    "move": move == null ? null : moveValues.reverse[move],
    "magic": magic == null ? null : magicValues.reverse[magic],
  };
}

enum Move { NONE, WALK, DASH_THROUGH, DASH }

final moveValues = EnumValues({
  "dash": Move.DASH,
  "dashThrough": Move.DASH_THROUGH,
  "none": Move.NONE,
  "walk": Move.WALK
});

class ItemStartOfTurnSkill {
  int chance;
  IndigoSkill skill;

  ItemStartOfTurnSkill({
    this.chance,
    this.skill,
  });

  factory ItemStartOfTurnSkill.fromJson(Map<String, dynamic> json) => ItemStartOfTurnSkill(
    chance: json["chance"] == null ? null : json["chance"],
    skill: json["skill"] == null ? null : IndigoSkill.fromJson(json["skill"]),
  );

  Map<String, dynamic> toJson() => {
    "chance": chance == null ? null : chance,
    "skill": skill == null ? null : skill.toJson(),
  };
}

class IndigoSkill {
  int id;
  String name;
  String icon;
  List<CooldownSkillEffect> effects;
  SkillType type;

  IndigoSkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.type,
  });

  factory IndigoSkill.fromJson(Map<String, dynamic> json) => IndigoSkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : json["icon"],
    effects: json["effects"] == null ? null : List<CooldownSkillEffect>.from(json["effects"].map((x) => CooldownSkillEffect.fromJson(x))),
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "type": type == null ? null : skillTypeValues.reverse[type],
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
