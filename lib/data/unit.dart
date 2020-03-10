// To parse this JSON data, do
//
//     final unit = unitFromJson(jsonString);

import 'dart:convert';

Map<String, Unit> unitFromJson(String str) => Map.from(json.decode(str)).map((k, v) => MapEntry<String, Unit>(k, Unit.fromJson(v)));

String unitToJson(Map<String, Unit> data) => json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

class Unit {
  String name;
  String id;
  String maxRarity;
  String minRarity;
  Sex sex;
  Stats stats;
  int statsPattern;
  List<Equip> equip;
  List<String> enhancementSkills;
  Lb lb;
  List<Passive> passives;
  List<Active> actives;
  List<MagicElement> magics;
  String jpname;
  Innate innate;
  int materiaSlots;
  Mitigation mitigation;

  Unit({
    this.name,
    this.id,
    this.maxRarity,
    this.minRarity,
    this.sex,
    this.stats,
    this.statsPattern,
    this.equip,
    this.enhancementSkills,
    this.lb,
    this.passives,
    this.actives,
    this.magics,
    this.jpname,
    this.innate,
    this.materiaSlots,
    this.mitigation,
  });

  factory Unit.fromJson(Map<String, dynamic> json) => Unit(
    name: json["name"] == null ? null : json["name"],
    id: json["id"] == null ? null : json["id"],
    maxRarity: json["max_rarity"] == null ? null : json["max_rarity"],
    minRarity: json["min_rarity"] == null ? null : json["min_rarity"],
    sex: json["sex"] == null ? null : sexValues.map[json["sex"]],
    stats: json["stats"] == null ? null : Stats.fromJson(json["stats"]),
    statsPattern: json["stats_pattern"] == null ? null : json["stats_pattern"],
    equip: json["equip"] == null ? null : List<Equip>.from(json["equip"].map((x) => x == null ? null : equipValues.map[x])),
    enhancementSkills: json["enhancementSkills"] == null ? null : List<String>.from(json["enhancementSkills"].map((x) => x)),
    lb: json["lb"] == null ? null : Lb.fromJson(json["lb"]),
    passives: json["passives"] == null ? null : List<Passive>.from(json["passives"].map((x) => Passive.fromJson(x))),
    actives: json["actives"] == null ? null : List<Active>.from(json["actives"].map((x) => Active.fromJson(x))),
    magics: json["magics"] == null ? null : List<MagicElement>.from(json["magics"].map((x) => MagicElement.fromJson(x))),
    jpname: json["jpname"] == null ? null : json["jpname"],
    innate: json["innate"] == null ? null : Innate.fromJson(json["innate"]),
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
    "lb": lb == null ? null : lb.toJson(),
    "passives": passives == null ? null : List<dynamic>.from(passives.map((x) => x.toJson())),
    "actives": actives == null ? null : List<dynamic>.from(actives.map((x) => x.toJson())),
    "magics": magics == null ? null : List<dynamic>.from(magics.map((x) => x.toJson())),
    "jpname": jpname == null ? null : jpname,
    "innate": innate == null ? null : innate.toJson(),
    "materiaSlots": materiaSlots == null ? null : materiaSlots,
    "mitigation": mitigation == null ? null : mitigation.toJson(),
  };
}

class Active {
  String id;
  String name;
  String icon;
  List<ActiveEffect> effects;
  List<int> frames;
  CooldownSkillMove move;
  SkillType type;
  int mpCost;
  int rarity;
  int level;
  List<IfUsedLastTurn> ifUsedLastTurn;
  List<String> unlockedBy;
  ChainFamily chainFamily;
  int lbCost;

  Active({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.frames,
    this.move,
    this.type,
    this.mpCost,
    this.rarity,
    this.level,
    this.ifUsedLastTurn,
    this.unlockedBy,
    this.chainFamily,
    this.lbCost,
  });

  factory Active.fromJson(Map<String, dynamic> json) => Active(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : json["icon"],
    effects: json["effects"] == null ? null : List<ActiveEffect>.from(json["effects"].map((x) => ActiveEffect.fromJson(x))),
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x == null ? null : x)),
    move: json["move"] == null ? null : cooldownSkillMoveValues.map[json["move"]],
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    mpCost: json["mpCost"] == null ? null : json["mpCost"],
    rarity: json["rarity"] == null ? null : json["rarity"],
    level: json["level"] == null ? null : json["level"],
    ifUsedLastTurn: json["ifUsedLastTurn"] == null ? null : List<IfUsedLastTurn>.from(json["ifUsedLastTurn"].map((x) => IfUsedLastTurn.fromJson(x))),
    unlockedBy: json["unlockedBy"] == null ? null : List<String>.from(json["unlockedBy"].map((x) => x)),
    chainFamily: json["chainFamily"] == null ? null : chainFamilyValues.map[json["chainFamily"]],
    lbCost: json["lbCost"] == null ? null : json["lbCost"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x == null ? null : x)),
    "move": move == null ? null : cooldownSkillMoveValues.reverse[move],
    "type": type == null ? null : skillTypeValues.reverse[type],
    "mpCost": mpCost == null ? null : mpCost,
    "rarity": rarity == null ? null : rarity,
    "level": level == null ? null : level,
    "ifUsedLastTurn": ifUsedLastTurn == null ? null : List<dynamic>.from(ifUsedLastTurn.map((x) => x.toJson())),
    "unlockedBy": unlockedBy == null ? null : List<dynamic>.from(unlockedBy.map((x) => x)),
    "chainFamily": chainFamily == null ? null : chainFamilyValues.reverse[chainFamily],
    "lbCost": lbCost == null ? null : lbCost,
  };
}

enum ChainFamily { SR, PD, OC_S, FP, QH, DSD, AR, DR, ON_S, CS, A_MO_E, TND, SO_K, KG, FB, BS, AZ, GC, FE, FLD, CW, CWA, MR, FRZ }

final chainFamilyValues = EnumValues({
  "AR": ChainFamily.AR,
  "AZ": ChainFamily.AZ,
  "AMoE": ChainFamily.A_MO_E,
  "BS": ChainFamily.BS,
  "Cs": ChainFamily.CS,
  "CW": ChainFamily.CW,
  "CWA": ChainFamily.CWA,
  "DR": ChainFamily.DR,
  "Dsd": ChainFamily.DSD,
  "FB": ChainFamily.FB,
  "FE": ChainFamily.FE,
  "Fld": ChainFamily.FLD,
  "FP": ChainFamily.FP,
  "Frz": ChainFamily.FRZ,
  "GC": ChainFamily.GC,
  "KG": ChainFamily.KG,
  "MR": ChainFamily.MR,
  "OcS": ChainFamily.OC_S,
  "OnS": ChainFamily.ON_S,
  "Pd": ChainFamily.PD,
  "QH": ChainFamily.QH,
  "SoK": ChainFamily.SO_K,
  "SR": ChainFamily.SR,
  "Tnd": ChainFamily.TND
});

class ActiveEffect {
  PurpleEffect effect;
  String desc;

  ActiveEffect({
    this.effect,
    this.desc,
  });

  factory ActiveEffect.fromJson(Map<String, dynamic> json) => ActiveEffect(
    effect: json["effect"] == null ? null : PurpleEffect.fromJson(json["effect"]),
    desc: json["desc"] == null ? null : json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "effect": effect == null ? null : effect.toJson(),
    "desc": desc == null ? null : desc,
  };
}

class PurpleEffect {
  PurpleDamage damage;
  Area area;
  Target target;
  Break effectBreak;
  int turns;
  bool noUse;
  int globalMitigation;
  Break statsBuff;
  List<Resist> resist;
  PurpleImperil imperil;
  Heal heal;
  FluffyMulticast multicast;
  CooldownSkill cooldownSkill;
  int cooldownTurns;
  int startTurn;
  HealOverTurn healOverTurn;
  PurpleGainSkills gainSkills;
  List<FluffyRandomlyUse> randomlyUse;
  int drawAttacks;
  List<NameElement> imbue;
  int hpSacrifice;
  Berserk berserk;
  AoeCover aoeCover;
  LbFill lbFill;
  List<PurpleKiller> killers;
  int magicalMitigation;
  int physicalMitigation;
  Map<String, double> skillEnhancement;
  int turn;
  List<int> frames;
  List<int> repartition;

  PurpleEffect({
    this.damage,
    this.area,
    this.target,
    this.effectBreak,
    this.turns,
    this.noUse,
    this.globalMitigation,
    this.statsBuff,
    this.resist,
    this.imperil,
    this.heal,
    this.multicast,
    this.cooldownSkill,
    this.cooldownTurns,
    this.startTurn,
    this.healOverTurn,
    this.gainSkills,
    this.randomlyUse,
    this.drawAttacks,
    this.imbue,
    this.hpSacrifice,
    this.berserk,
    this.aoeCover,
    this.lbFill,
    this.killers,
    this.magicalMitigation,
    this.physicalMitigation,
    this.skillEnhancement,
    this.turn,
    this.frames,
    this.repartition,
  });

  factory PurpleEffect.fromJson(Map<String, dynamic> json) => PurpleEffect(
    damage: json["damage"] == null ? null : PurpleDamage.fromJson(json["damage"]),
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
    effectBreak: json["break"] == null ? null : Break.fromJson(json["break"]),
    turns: json["turns"] == null ? null : json["turns"],
    noUse: json["noUse"] == null ? null : json["noUse"],
    globalMitigation: json["globalMitigation"] == null ? null : json["globalMitigation"],
    statsBuff: json["statsBuff"] == null ? null : Break.fromJson(json["statsBuff"]),
    resist: json["resist"] == null ? null : List<Resist>.from(json["resist"].map((x) => Resist.fromJson(x))),
    imperil: json["imperil"] == null ? null : PurpleImperil.fromJson(json["imperil"]),
    heal: json["heal"] == null ? null : Heal.fromJson(json["heal"]),
    multicast: json["multicast"] == null ? null : FluffyMulticast.fromJson(json["multicast"]),
    cooldownSkill: json["cooldownSkill"] == null ? null : CooldownSkill.fromJson(json["cooldownSkill"]),
    cooldownTurns: json["cooldownTurns"] == null ? null : json["cooldownTurns"],
    startTurn: json["startTurn"] == null ? null : json["startTurn"],
    healOverTurn: json["healOverTurn"] == null ? null : HealOverTurn.fromJson(json["healOverTurn"]),
    gainSkills: json["gainSkills"] == null ? null : PurpleGainSkills.fromJson(json["gainSkills"]),
    randomlyUse: json["randomlyUse"] == null ? null : List<FluffyRandomlyUse>.from(json["randomlyUse"].map((x) => FluffyRandomlyUse.fromJson(x))),
    drawAttacks: json["drawAttacks"] == null ? null : json["drawAttacks"],
    imbue: json["imbue"] == null ? null : List<NameElement>.from(json["imbue"].map((x) => nameElementValues.map[x])),
    hpSacrifice: json["hpSacrifice"] == null ? null : json["hpSacrifice"],
    berserk: json["berserk"] == null ? null : Berserk.fromJson(json["berserk"]),
    aoeCover: json["aoeCover"] == null ? null : AoeCover.fromJson(json["aoeCover"]),
    lbFill: json["lbFill"] == null ? null : LbFill.fromJson(json["lbFill"]),
    killers: json["killers"] == null ? null : List<PurpleKiller>.from(json["killers"].map((x) => PurpleKiller.fromJson(x))),
    magicalMitigation: json["magicalMitigation"] == null ? null : json["magicalMitigation"],
    physicalMitigation: json["physicalMitigation"] == null ? null : json["physicalMitigation"],
    skillEnhancement: json["skillEnhancement"] == null ? null : Map.from(json["skillEnhancement"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
    turn: json["turn"] == null ? null : json["turn"],
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x)),
    repartition: json["repartition"] == null ? null : List<int>.from(json["repartition"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "damage": damage == null ? null : damage.toJson(),
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : targetValues.reverse[target],
    "break": effectBreak == null ? null : effectBreak.toJson(),
    "turns": turns == null ? null : turns,
    "noUse": noUse == null ? null : noUse,
    "globalMitigation": globalMitigation == null ? null : globalMitigation,
    "statsBuff": statsBuff == null ? null : statsBuff.toJson(),
    "resist": resist == null ? null : List<dynamic>.from(resist.map((x) => x.toJson())),
    "imperil": imperil == null ? null : imperil.toJson(),
    "heal": heal == null ? null : heal.toJson(),
    "multicast": multicast == null ? null : multicast.toJson(),
    "cooldownSkill": cooldownSkill == null ? null : cooldownSkill.toJson(),
    "cooldownTurns": cooldownTurns == null ? null : cooldownTurns,
    "startTurn": startTurn == null ? null : startTurn,
    "healOverTurn": healOverTurn == null ? null : healOverTurn.toJson(),
    "gainSkills": gainSkills == null ? null : gainSkills.toJson(),
    "randomlyUse": randomlyUse == null ? null : List<dynamic>.from(randomlyUse.map((x) => x.toJson())),
    "drawAttacks": drawAttacks == null ? null : drawAttacks,
    "imbue": imbue == null ? null : List<dynamic>.from(imbue.map((x) => nameElementValues.reverse[x])),
    "hpSacrifice": hpSacrifice == null ? null : hpSacrifice,
    "berserk": berserk == null ? null : berserk.toJson(),
    "aoeCover": aoeCover == null ? null : aoeCover.toJson(),
    "lbFill": lbFill == null ? null : lbFill.toJson(),
    "killers": killers == null ? null : List<dynamic>.from(killers.map((x) => x.toJson())),
    "magicalMitigation": magicalMitigation == null ? null : magicalMitigation,
    "physicalMitigation": physicalMitigation == null ? null : physicalMitigation,
    "skillEnhancement": skillEnhancement == null ? null : Map.from(skillEnhancement).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "turn": turn == null ? null : turn,
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x)),
    "repartition": repartition == null ? null : List<dynamic>.from(repartition.map((x) => x)),
  };
}

class AoeCover {
  CounterTypeEnum type;
  LbFill mitigation;
  int chance;

  AoeCover({
    this.type,
    this.mitigation,
    this.chance,
  });

  factory AoeCover.fromJson(Map<String, dynamic> json) => AoeCover(
    type: json["type"] == null ? null : counterTypeEnumValues.map[json["type"]],
    mitigation: json["mitigation"] == null ? null : LbFill.fromJson(json["mitigation"]),
    chance: json["chance"] == null ? null : json["chance"],
  );

  Map<String, dynamic> toJson() => {
    "type": type == null ? null : counterTypeEnumValues.reverse[type],
    "mitigation": mitigation == null ? null : mitigation.toJson(),
    "chance": chance == null ? null : chance,
  };
}

class LbFill {
  double min;
  double max;

  LbFill({
    this.min,
    this.max,
  });

  factory LbFill.fromJson(Map<String, dynamic> json) => LbFill(
    min: json["min"] == null ? null : json["min"].toDouble(),
    max: json["max"] == null ? null : json["max"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "min": min == null ? null : min,
    "max": max == null ? null : max,
  };
}

enum CounterTypeEnum { PHYSICAL, MAGICAL, HYBRID, SUMMONER_SKILL, NONE }

final counterTypeEnumValues = EnumValues({
  "hybrid": CounterTypeEnum.HYBRID,
  "magical": CounterTypeEnum.MAGICAL,
  "none": CounterTypeEnum.NONE,
  "physical": CounterTypeEnum.PHYSICAL,
  "summonerSkill": CounterTypeEnum.SUMMONER_SKILL
});

enum Area { ST, SELF, AOE, RND }

final areaValues = EnumValues({
  "AOE": Area.AOE,
  "RND": Area.RND,
  "SELF": Area.SELF,
  "ST": Area.ST
});

class Berserk {
  int percent;
  int duration;

  Berserk({
    this.percent,
    this.duration,
  });

  factory Berserk.fromJson(Map<String, dynamic> json) => Berserk(
    percent: json["percent"] == null ? null : json["percent"],
    duration: json["duration"] == null ? null : json["duration"],
  );

  Map<String, dynamic> toJson() => {
    "percent": percent == null ? null : percent,
    "duration": duration == null ? null : duration,
  };
}

class CooldownSkill {
  String id;
  String name;
  CooldownSkillIcon icon;
  List<CooldownSkillEffect> effects;
  List<int> frames;
  CooldownSkillMove move;
  SkillType type;
  int mpCost;
  ChainFamily chainFamily;
  int lbCost;
  bool preventDualCastWithDualWield;

  CooldownSkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.frames,
    this.move,
    this.type,
    this.mpCost,
    this.chainFamily,
    this.lbCost,
    this.preventDualCastWithDualWield,
  });

  factory CooldownSkill.fromJson(Map<String, dynamic> json) => CooldownSkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : cooldownSkillIconValues.map[json["icon"]],
    effects: json["effects"] == null ? null : List<CooldownSkillEffect>.from(json["effects"].map((x) => CooldownSkillEffect.fromJson(x))),
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x)),
    move: json["move"] == null ? null : cooldownSkillMoveValues.map[json["move"]],
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    mpCost: json["mpCost"] == null ? null : json["mpCost"],
    chainFamily: json["chainFamily"] == null ? null : chainFamilyValues.map[json["chainFamily"]],
    lbCost: json["lbCost"] == null ? null : json["lbCost"],
    preventDualCastWithDualWield: json["preventDualCastWithDualWield"] == null ? null : json["preventDualCastWithDualWield"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : cooldownSkillIconValues.reverse[icon],
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x)),
    "move": move == null ? null : cooldownSkillMoveValues.reverse[move],
    "type": type == null ? null : skillTypeValues.reverse[type],
    "mpCost": mpCost == null ? null : mpCost,
    "chainFamily": chainFamily == null ? null : chainFamilyValues.reverse[chainFamily],
    "lbCost": lbCost == null ? null : lbCost,
    "preventDualCastWithDualWield": preventDualCastWithDualWield == null ? null : preventDualCastWithDualWield,
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
  PurpleDamage damage;
  Area area;
  Target target;
  PurpleImperil imperil;
  int turns;
  bool noUse;
  Break statsBuff;
  Map<String, double> skillEnhancement;
  int turn;
  PurpleGainSkills gainSkills;
  List<Resist> resist;
  int globalMitigation;
  LbFill lbFill;
  int physicalMitigation;
  HealOverTurn healOverTurn;
  Heal heal;
  Break effectBreak;
  int drawAttacks;
  List<NameElement> imbue;
  List<PurpleRandomlyUse> randomlyUse;
  List<PurpleKiller> killers;
  int magicalMitigation;
  AoeCover aoeCover;
  int hpSacrifice;
  Berserk berserk;

  FluffyEffect({
    this.damage,
    this.area,
    this.target,
    this.imperil,
    this.turns,
    this.noUse,
    this.statsBuff,
    this.skillEnhancement,
    this.turn,
    this.gainSkills,
    this.resist,
    this.globalMitigation,
    this.lbFill,
    this.physicalMitigation,
    this.healOverTurn,
    this.heal,
    this.effectBreak,
    this.drawAttacks,
    this.imbue,
    this.randomlyUse,
    this.killers,
    this.magicalMitigation,
    this.aoeCover,
    this.hpSacrifice,
    this.berserk,
  });

  factory FluffyEffect.fromJson(Map<String, dynamic> json) => FluffyEffect(
    damage: json["damage"] == null ? null : PurpleDamage.fromJson(json["damage"]),
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
    imperil: json["imperil"] == null ? null : PurpleImperil.fromJson(json["imperil"]),
    turns: json["turns"] == null ? null : json["turns"],
    noUse: json["noUse"] == null ? null : json["noUse"],
    statsBuff: json["statsBuff"] == null ? null : Break.fromJson(json["statsBuff"]),
    skillEnhancement: json["skillEnhancement"] == null ? null : Map.from(json["skillEnhancement"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
    turn: json["turn"] == null ? null : json["turn"],
    gainSkills: json["gainSkills"] == null ? null : PurpleGainSkills.fromJson(json["gainSkills"]),
    resist: json["resist"] == null ? null : List<Resist>.from(json["resist"].map((x) => Resist.fromJson(x))),
    globalMitigation: json["globalMitigation"] == null ? null : json["globalMitigation"],
    lbFill: json["lbFill"] == null ? null : LbFill.fromJson(json["lbFill"]),
    physicalMitigation: json["physicalMitigation"] == null ? null : json["physicalMitigation"],
    healOverTurn: json["healOverTurn"] == null ? null : HealOverTurn.fromJson(json["healOverTurn"]),
    heal: json["heal"] == null ? null : Heal.fromJson(json["heal"]),
    effectBreak: json["break"] == null ? null : Break.fromJson(json["break"]),
    drawAttacks: json["drawAttacks"] == null ? null : json["drawAttacks"],
    imbue: json["imbue"] == null ? null : List<NameElement>.from(json["imbue"].map((x) => nameElementValues.map[x])),
    randomlyUse: json["randomlyUse"] == null ? null : List<PurpleRandomlyUse>.from(json["randomlyUse"].map((x) => PurpleRandomlyUse.fromJson(x))),
    killers: json["killers"] == null ? null : List<PurpleKiller>.from(json["killers"].map((x) => PurpleKiller.fromJson(x))),
    magicalMitigation: json["magicalMitigation"] == null ? null : json["magicalMitigation"],
    aoeCover: json["aoeCover"] == null ? null : AoeCover.fromJson(json["aoeCover"]),
    hpSacrifice: json["hpSacrifice"] == null ? null : json["hpSacrifice"],
    berserk: json["berserk"] == null ? null : Berserk.fromJson(json["berserk"]),
  );

  Map<String, dynamic> toJson() => {
    "damage": damage == null ? null : damage.toJson(),
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : targetValues.reverse[target],
    "imperil": imperil == null ? null : imperil.toJson(),
    "turns": turns == null ? null : turns,
    "noUse": noUse == null ? null : noUse,
    "statsBuff": statsBuff == null ? null : statsBuff.toJson(),
    "skillEnhancement": skillEnhancement == null ? null : Map.from(skillEnhancement).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "turn": turn == null ? null : turn,
    "gainSkills": gainSkills == null ? null : gainSkills.toJson(),
    "resist": resist == null ? null : List<dynamic>.from(resist.map((x) => x.toJson())),
    "globalMitigation": globalMitigation == null ? null : globalMitigation,
    "lbFill": lbFill == null ? null : lbFill.toJson(),
    "physicalMitigation": physicalMitigation == null ? null : physicalMitigation,
    "healOverTurn": healOverTurn == null ? null : healOverTurn.toJson(),
    "heal": heal == null ? null : heal.toJson(),
    "break": effectBreak == null ? null : effectBreak.toJson(),
    "drawAttacks": drawAttacks == null ? null : drawAttacks,
    "imbue": imbue == null ? null : List<dynamic>.from(imbue.map((x) => nameElementValues.reverse[x])),
    "randomlyUse": randomlyUse == null ? null : List<dynamic>.from(randomlyUse.map((x) => x.toJson())),
    "killers": killers == null ? null : List<dynamic>.from(killers.map((x) => x.toJson())),
    "magicalMitigation": magicalMitigation == null ? null : magicalMitigation,
    "aoeCover": aoeCover == null ? null : aoeCover.toJson(),
    "hpSacrifice": hpSacrifice == null ? null : hpSacrifice,
    "berserk": berserk == null ? null : berserk.toJson(),
  };
}

class PurpleDamage {
  CounterTypeEnum mecanism;
  DamageType damageType;
  double coef;
  List<NameElement> elements;
  PurpleIgnore ignore;
  double magCoef;
  double sprCoef;
  double magSplit;
  double sprSplit;
  Use use;
  bool combo;
  int minTime;
  int maxTime;
  int delay;
  bool jump;
  double stack;
  int maxStack;
  IfUsedAgain ifUsedAgain;

  PurpleDamage({
    this.mecanism,
    this.damageType,
    this.coef,
    this.elements,
    this.ignore,
    this.magCoef,
    this.sprCoef,
    this.magSplit,
    this.sprSplit,
    this.use,
    this.combo,
    this.minTime,
    this.maxTime,
    this.delay,
    this.jump,
    this.stack,
    this.maxStack,
    this.ifUsedAgain,
  });

  factory PurpleDamage.fromJson(Map<String, dynamic> json) => PurpleDamage(
    mecanism: json["mecanism"] == null ? null : counterTypeEnumValues.map[json["mecanism"]],
    damageType: json["damageType"] == null ? null : damageTypeValues.map[json["damageType"]],
    coef: json["coef"] == null ? null : json["coef"].toDouble(),
    elements: json["elements"] == null ? null : List<NameElement>.from(json["elements"].map((x) => nameElementValues.map[x])),
    ignore: json["ignore"] == null ? null : PurpleIgnore.fromJson(json["ignore"]),
    magCoef: json["magCoef"] == null ? null : json["magCoef"].toDouble(),
    sprCoef: json["sprCoef"] == null ? null : json["sprCoef"].toDouble(),
    magSplit: json["magSplit"] == null ? null : json["magSplit"].toDouble(),
    sprSplit: json["sprSplit"] == null ? null : json["sprSplit"].toDouble(),
    use: json["use"] == null ? null : Use.fromJson(json["use"]),
    combo: json["combo"] == null ? null : json["combo"],
    minTime: json["minTime"] == null ? null : json["minTime"],
    maxTime: json["maxTime"] == null ? null : json["maxTime"],
    delay: json["delay"] == null ? null : json["delay"],
    jump: json["jump"] == null ? null : json["jump"],
    stack: json["stack"] == null ? null : json["stack"].toDouble(),
    maxStack: json["maxStack"] == null ? null : json["maxStack"],
    ifUsedAgain: json["ifUsedAgain"] == null ? null : IfUsedAgain.fromJson(json["ifUsedAgain"]),
  );

  Map<String, dynamic> toJson() => {
    "mecanism": mecanism == null ? null : counterTypeEnumValues.reverse[mecanism],
    "damageType": damageType == null ? null : damageTypeValues.reverse[damageType],
    "coef": coef == null ? null : coef,
    "elements": elements == null ? null : List<dynamic>.from(elements.map((x) => nameElementValues.reverse[x])),
    "ignore": ignore == null ? null : ignore.toJson(),
    "magCoef": magCoef == null ? null : magCoef,
    "sprCoef": sprCoef == null ? null : sprCoef,
    "magSplit": magSplit == null ? null : magSplit,
    "sprSplit": sprSplit == null ? null : sprSplit,
    "use": use == null ? null : use.toJson(),
    "combo": combo == null ? null : combo,
    "minTime": minTime == null ? null : minTime,
    "maxTime": maxTime == null ? null : maxTime,
    "delay": delay == null ? null : delay,
    "jump": jump == null ? null : jump,
    "stack": stack == null ? null : stack,
    "maxStack": maxStack == null ? null : maxStack,
    "ifUsedAgain": ifUsedAgain == null ? null : ifUsedAgain.toJson(),
  };
}

enum DamageType { MIND, BODY, EVOKE }

final damageTypeValues = EnumValues({
  "body": DamageType.BODY,
  "evoke": DamageType.EVOKE,
  "mind": DamageType.MIND
});

enum NameElement { EARTH, WIND, WATER, FIRE, LIGHT, ICE, LIGHTNING, DARK, BREAK_ATK, BREAK_DEF, STOP, POISON, BLIND, SLEEP, SILENCE, PARALYSIS, CONFUSE, DISEASE, PETRIFICATION, BREAK_SPR, BREAK_MAG, CHARM }

final nameElementValues = EnumValues({
  "blind": NameElement.BLIND,
  "break_atk": NameElement.BREAK_ATK,
  "break_def": NameElement.BREAK_DEF,
  "break_mag": NameElement.BREAK_MAG,
  "break_spr": NameElement.BREAK_SPR,
  "charm": NameElement.CHARM,
  "confuse": NameElement.CONFUSE,
  "dark": NameElement.DARK,
  "disease": NameElement.DISEASE,
  "earth": NameElement.EARTH,
  "fire": NameElement.FIRE,
  "ice": NameElement.ICE,
  "light": NameElement.LIGHT,
  "lightning": NameElement.LIGHTNING,
  "paralysis": NameElement.PARALYSIS,
  "petrification": NameElement.PETRIFICATION,
  "poison": NameElement.POISON,
  "silence": NameElement.SILENCE,
  "sleep": NameElement.SLEEP,
  "stop": NameElement.STOP,
  "water": NameElement.WATER,
  "wind": NameElement.WIND
});

class IfUsedAgain {
  RaceEnum race;
  double coef;

  IfUsedAgain({
    this.race,
    this.coef,
  });

  factory IfUsedAgain.fromJson(Map<String, dynamic> json) => IfUsedAgain(
    race: json["race"] == null ? null : raceEnumValues.map[json["race"]],
    coef: json["coef"] == null ? null : json["coef"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "race": race == null ? null : raceEnumValues.reverse[race],
    "coef": coef == null ? null : coef,
  };
}

enum RaceEnum { MACHINE, STONE, HUMAN, SPIRIT, DEMON, UNDEAD, DRAGON, BIRD, AQUATIC, BEAST, PLANT, BUG }

final raceEnumValues = EnumValues({
  "aquatic": RaceEnum.AQUATIC,
  "beast": RaceEnum.BEAST,
  "bird": RaceEnum.BIRD,
  "bug": RaceEnum.BUG,
  "demon": RaceEnum.DEMON,
  "dragon": RaceEnum.DRAGON,
  "human": RaceEnum.HUMAN,
  "machine": RaceEnum.MACHINE,
  "plant": RaceEnum.PLANT,
  "spirit": RaceEnum.SPIRIT,
  "stone": RaceEnum.STONE,
  "undead": RaceEnum.UNDEAD
});

class PurpleIgnore {
  int def;
  int spr;

  PurpleIgnore({
    this.def,
    this.spr,
  });

  factory PurpleIgnore.fromJson(Map<String, dynamic> json) => PurpleIgnore(
    def: json["def"] == null ? null : json["def"],
    spr: json["spr"] == null ? null : json["spr"],
  );

  Map<String, dynamic> toJson() => {
    "def": def == null ? null : def,
    "spr": spr == null ? null : spr,
  };
}

class Use {
  Stat stat;
  int percent;
  int max;

  Use({
    this.stat,
    this.percent,
    this.max,
  });

  factory Use.fromJson(Map<String, dynamic> json) => Use(
    stat: json["stat"] == null ? null : statValues.map[json["stat"]],
    percent: json["percent"] == null ? null : json["percent"],
    max: json["max"] == null ? null : json["max"],
  );

  Map<String, dynamic> toJson() => {
    "stat": stat == null ? null : statValues.reverse[stat],
    "percent": percent == null ? null : percent,
    "max": max == null ? null : max,
  };
}

enum Stat { DEF, SPR }

final statValues = EnumValues({
  "def": Stat.DEF,
  "spr": Stat.SPR
});

class Break {
  int def;
  int spr;
  int atk;
  int mag;
  int lbDamage;

  Break({
    this.def,
    this.spr,
    this.atk,
    this.mag,
    this.lbDamage,
  });

  factory Break.fromJson(Map<String, dynamic> json) => Break(
    def: json["def"] == null ? null : json["def"],
    spr: json["spr"] == null ? null : json["spr"],
    atk: json["atk"] == null ? null : json["atk"],
    mag: json["mag"] == null ? null : json["mag"],
    lbDamage: json["lbDamage"] == null ? null : json["lbDamage"],
  );

  Map<String, dynamic> toJson() => {
    "def": def == null ? null : def,
    "spr": spr == null ? null : spr,
    "atk": atk == null ? null : atk,
    "mag": mag == null ? null : mag,
    "lbDamage": lbDamage == null ? null : lbDamage,
  };
}

class PurpleGainSkills {
  int turns;
  List<PurpleSkill> skills;

  PurpleGainSkills({
    this.turns,
    this.skills,
  });

  factory PurpleGainSkills.fromJson(Map<String, dynamic> json) => PurpleGainSkills(
    turns: json["turns"] == null ? null : json["turns"],
    skills: json["skills"] == null ? null : List<PurpleSkill>.from(json["skills"].map((x) => PurpleSkill.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "turns": turns == null ? null : turns,
    "skills": skills == null ? null : List<dynamic>.from(skills.map((x) => x.toJson())),
  };
}

class PurpleSkill {
  String id;
  String name;
  MagicIcon icon;
  List<TentacledEffect> effects;
  List<String> unlockedBy;

  PurpleSkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.unlockedBy,
  });

  factory PurpleSkill.fromJson(Map<String, dynamic> json) => PurpleSkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : magicIconValues.map[json["icon"]],
    effects: json["effects"] == null ? null : List<TentacledEffect>.from(json["effects"].map((x) => TentacledEffect.fromJson(x))),
    unlockedBy: json["unlockedBy"] == null ? null : List<String>.from(json["unlockedBy"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : magicIconValues.reverse[icon],
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "unlockedBy": unlockedBy == null ? null : List<dynamic>.from(unlockedBy.map((x) => x)),
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
  PurpleMulticast multicast;

  StickyEffect({
    this.multicast,
  });

  factory StickyEffect.fromJson(Map<String, dynamic> json) => StickyEffect(
    multicast: json["multicast"] == null ? null : PurpleMulticast.fromJson(json["multicast"]),
  );

  Map<String, dynamic> toJson() => {
    "multicast": multicast == null ? null : multicast.toJson(),
  };
}

class PurpleMulticast {
  int time;
  MulticastType type;

  PurpleMulticast({
    this.time,
    this.type,
  });

  factory PurpleMulticast.fromJson(Map<String, dynamic> json) => PurpleMulticast(
    time: json["time"] == null ? null : json["time"],
    type: json["type"] == null ? null : multicastTypeValues.map[json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "time": time == null ? null : time,
    "type": type == null ? null : multicastTypeValues.reverse[type],
  };
}

enum MulticastType { BLACK_MAGIC, MAGIC, WHITE_MAGIC, SKILLS }

final multicastTypeValues = EnumValues({
  "blackMagic": MulticastType.BLACK_MAGIC,
  "magic": MulticastType.MAGIC,
  "skills": MulticastType.SKILLS,
  "whiteMagic": MulticastType.WHITE_MAGIC
});

enum MagicIcon { ABILITY_26_PNG, ABILITY_5_PNG, ABILITY_21_PNG, ABILITY_28_PNG, ABILITY_22_PNG, ABILITY_25_PNG, ABILITY_4_PNG, ABILITY_3_PNG, ABILITY_77_PNG, ABILITY_1_PNG, ABILITY_23_PNG, ABILITY_20_PNG, ABILITY_24_PNG, ABILITY_6_PNG, ABILITY_37_PNG, ABILITY_31_PNG, ABILITY_34_PNG, ABILITY_15_PNG, ABILITY_18_PNG, ABILITY_39_PNG, ABILITY_2_PNG, ABILITY_14_PNG, ABILITY_11_PNG, ABILITY_13_PNG, ABILITY_38_PNG, ABILITY_29_PNG, ABILITY_98_PNG, ABILITY_12_PNG, ABILITY_17_PNG, ABILITY_35_PNG, ABILITY_92_PNG, ABILITY_33_PNG, ABILITY_30_PNG, ABILITY_36_PNG, ABILITY_10_PNG, ABILITY_43_PNG, ABILITY_80_PNG, ABILITY_9_PNG, ABILITY_19_PNG }

final magicIconValues = EnumValues({
  "ability_10.png": MagicIcon.ABILITY_10_PNG,
  "ability_11.png": MagicIcon.ABILITY_11_PNG,
  "ability_12.png": MagicIcon.ABILITY_12_PNG,
  "ability_13.png": MagicIcon.ABILITY_13_PNG,
  "ability_14.png": MagicIcon.ABILITY_14_PNG,
  "ability_15.png": MagicIcon.ABILITY_15_PNG,
  "ability_17.png": MagicIcon.ABILITY_17_PNG,
  "ability_18.png": MagicIcon.ABILITY_18_PNG,
  "ability_19.png": MagicIcon.ABILITY_19_PNG,
  "ability_1.png": MagicIcon.ABILITY_1_PNG,
  "ability_20.png": MagicIcon.ABILITY_20_PNG,
  "ability_21.png": MagicIcon.ABILITY_21_PNG,
  "ability_22.png": MagicIcon.ABILITY_22_PNG,
  "ability_23.png": MagicIcon.ABILITY_23_PNG,
  "ability_24.png": MagicIcon.ABILITY_24_PNG,
  "ability_25.png": MagicIcon.ABILITY_25_PNG,
  "ability_26.png": MagicIcon.ABILITY_26_PNG,
  "ability_28.png": MagicIcon.ABILITY_28_PNG,
  "ability_29.png": MagicIcon.ABILITY_29_PNG,
  "ability_2.png": MagicIcon.ABILITY_2_PNG,
  "ability_30.png": MagicIcon.ABILITY_30_PNG,
  "ability_31.png": MagicIcon.ABILITY_31_PNG,
  "ability_33.png": MagicIcon.ABILITY_33_PNG,
  "ability_34.png": MagicIcon.ABILITY_34_PNG,
  "ability_35.png": MagicIcon.ABILITY_35_PNG,
  "ability_36.png": MagicIcon.ABILITY_36_PNG,
  "ability_37.png": MagicIcon.ABILITY_37_PNG,
  "ability_38.png": MagicIcon.ABILITY_38_PNG,
  "ability_39.png": MagicIcon.ABILITY_39_PNG,
  "ability_3.png": MagicIcon.ABILITY_3_PNG,
  "ability_43.png": MagicIcon.ABILITY_43_PNG,
  "ability_4.png": MagicIcon.ABILITY_4_PNG,
  "ability_5.png": MagicIcon.ABILITY_5_PNG,
  "ability_6.png": MagicIcon.ABILITY_6_PNG,
  "ability_77.png": MagicIcon.ABILITY_77_PNG,
  "ability_80.png": MagicIcon.ABILITY_80_PNG,
  "ability_92.png": MagicIcon.ABILITY_92_PNG,
  "ability_98.png": MagicIcon.ABILITY_98_PNG,
  "ability_9.png": MagicIcon.ABILITY_9_PNG
});

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

class HealOverTurn {
  int base;
  double coef;
  int turns;

  HealOverTurn({
    this.base,
    this.coef,
    this.turns,
  });

  factory HealOverTurn.fromJson(Map<String, dynamic> json) => HealOverTurn(
    base: json["base"] == null ? null : json["base"],
    coef: json["coef"] == null ? null : json["coef"].toDouble(),
    turns: json["turns"] == null ? null : json["turns"],
  );

  Map<String, dynamic> toJson() => {
    "base": base == null ? null : base,
    "coef": coef == null ? null : coef,
    "turns": turns == null ? null : turns,
  };
}

class PurpleImperil {
  int earth;
  int water;
  int wind;
  int lightning;
  int fire;
  int ice;
  int light;
  int dark;

  PurpleImperil({
    this.earth,
    this.water,
    this.wind,
    this.lightning,
    this.fire,
    this.ice,
    this.light,
    this.dark,
  });

  factory PurpleImperil.fromJson(Map<String, dynamic> json) => PurpleImperil(
    earth: json["earth"] == null ? null : json["earth"],
    water: json["water"] == null ? null : json["water"],
    wind: json["wind"] == null ? null : json["wind"],
    lightning: json["lightning"] == null ? null : json["lightning"],
    fire: json["fire"] == null ? null : json["fire"],
    ice: json["ice"] == null ? null : json["ice"],
    light: json["light"] == null ? null : json["light"],
    dark: json["dark"] == null ? null : json["dark"],
  );

  Map<String, dynamic> toJson() => {
    "earth": earth == null ? null : earth,
    "water": water == null ? null : water,
    "wind": wind == null ? null : wind,
    "lightning": lightning == null ? null : lightning,
    "fire": fire == null ? null : fire,
    "ice": ice == null ? null : ice,
    "light": light == null ? null : light,
    "dark": dark == null ? null : dark,
  };
}

class PurpleKiller {
  RaceEnum name;
  int physical;
  int magical;

  PurpleKiller({
    this.name,
    this.physical,
    this.magical,
  });

  factory PurpleKiller.fromJson(Map<String, dynamic> json) => PurpleKiller(
    name: json["name"] == null ? null : raceEnumValues.map[json["name"]],
    physical: json["physical"] == null ? null : json["physical"],
    magical: json["magical"] == null ? null : json["magical"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : raceEnumValues.reverse[name],
    "physical": physical == null ? null : physical,
    "magical": magical == null ? null : magical,
  };
}

class PurpleRandomlyUse {
  FluffySkill skill;
  int percent;

  PurpleRandomlyUse({
    this.skill,
    this.percent,
  });

  factory PurpleRandomlyUse.fromJson(Map<String, dynamic> json) => PurpleRandomlyUse(
    skill: json["skill"] == null ? null : FluffySkill.fromJson(json["skill"]),
    percent: json["percent"] == null ? null : json["percent"],
  );

  Map<String, dynamic> toJson() => {
    "skill": skill == null ? null : skill.toJson(),
    "percent": percent == null ? null : percent,
  };
}

class FluffySkill {
  int id;
  String name;
  PurpleIcon icon;
  List<IndigoEffect> effects;
  SkillType type;
  int mpCost;
  List<int> frames;
  CounterTypeEnum move;

  FluffySkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.type,
    this.mpCost,
    this.frames,
    this.move,
  });

  factory FluffySkill.fromJson(Map<String, dynamic> json) => FluffySkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : purpleIconValues.map[json["icon"]],
    effects: json["effects"] == null ? null : List<IndigoEffect>.from(json["effects"].map((x) => IndigoEffect.fromJson(x))),
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    mpCost: json["mpCost"] == null ? null : json["mpCost"],
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x)),
    move: json["move"] == null ? null : counterTypeEnumValues.map[json["move"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : purpleIconValues.reverse[icon],
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "type": type == null ? null : skillTypeValues.reverse[type],
    "mpCost": mpCost == null ? null : mpCost,
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x)),
    "move": move == null ? null : counterTypeEnumValues.reverse[move],
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
  Break effectBreak;
  int turns;
  Area area;
  Target target;
  bool noUse;
  int globalMitigation;
  FluffyGainSkills gainSkills;
  List<Resist> resist;
  FluffyDamage damage;
  FluffyImperil imperil;
  Break statsBuff;
  LbFill lbFill;

  IndecentEffect({
    this.effectBreak,
    this.turns,
    this.area,
    this.target,
    this.noUse,
    this.globalMitigation,
    this.gainSkills,
    this.resist,
    this.damage,
    this.imperil,
    this.statsBuff,
    this.lbFill,
  });

  factory IndecentEffect.fromJson(Map<String, dynamic> json) => IndecentEffect(
    effectBreak: json["break"] == null ? null : Break.fromJson(json["break"]),
    turns: json["turns"] == null ? null : json["turns"],
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
    noUse: json["noUse"] == null ? null : json["noUse"],
    globalMitigation: json["globalMitigation"] == null ? null : json["globalMitigation"],
    gainSkills: json["gainSkills"] == null ? null : FluffyGainSkills.fromJson(json["gainSkills"]),
    resist: json["resist"] == null ? null : List<Resist>.from(json["resist"].map((x) => Resist.fromJson(x))),
    damage: json["damage"] == null ? null : FluffyDamage.fromJson(json["damage"]),
    imperil: json["imperil"] == null ? null : FluffyImperil.fromJson(json["imperil"]),
    statsBuff: json["statsBuff"] == null ? null : Break.fromJson(json["statsBuff"]),
    lbFill: json["lbFill"] == null ? null : LbFill.fromJson(json["lbFill"]),
  );

  Map<String, dynamic> toJson() => {
    "break": effectBreak == null ? null : effectBreak.toJson(),
    "turns": turns == null ? null : turns,
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : targetValues.reverse[target],
    "noUse": noUse == null ? null : noUse,
    "globalMitigation": globalMitigation == null ? null : globalMitigation,
    "gainSkills": gainSkills == null ? null : gainSkills.toJson(),
    "resist": resist == null ? null : List<dynamic>.from(resist.map((x) => x.toJson())),
    "damage": damage == null ? null : damage.toJson(),
    "imperil": imperil == null ? null : imperil.toJson(),
    "statsBuff": statsBuff == null ? null : statsBuff.toJson(),
    "lbFill": lbFill == null ? null : lbFill.toJson(),
  };
}

class FluffyDamage {
  CounterTypeEnum mecanism;
  DamageType damageType;
  double coef;
  Use use;
  List<NameElement> elements;

  FluffyDamage({
    this.mecanism,
    this.damageType,
    this.coef,
    this.use,
    this.elements,
  });

  factory FluffyDamage.fromJson(Map<String, dynamic> json) => FluffyDamage(
    mecanism: json["mecanism"] == null ? null : counterTypeEnumValues.map[json["mecanism"]],
    damageType: json["damageType"] == null ? null : damageTypeValues.map[json["damageType"]],
    coef: json["coef"] == null ? null : json["coef"].toDouble(),
    use: json["use"] == null ? null : Use.fromJson(json["use"]),
    elements: json["elements"] == null ? null : List<NameElement>.from(json["elements"].map((x) => nameElementValues.map[x])),
  );

  Map<String, dynamic> toJson() => {
    "mecanism": mecanism == null ? null : counterTypeEnumValues.reverse[mecanism],
    "damageType": damageType == null ? null : damageTypeValues.reverse[damageType],
    "coef": coef == null ? null : coef,
    "use": use == null ? null : use.toJson(),
    "elements": elements == null ? null : List<dynamic>.from(elements.map((x) => nameElementValues.reverse[x])),
  };
}

class FluffyGainSkills {
  List<MulticastSkill> skills;
  int turns;

  FluffyGainSkills({
    this.skills,
    this.turns,
  });

  factory FluffyGainSkills.fromJson(Map<String, dynamic> json) => FluffyGainSkills(
    skills: json["skills"] == null ? null : List<MulticastSkill>.from(json["skills"].map((x) => MulticastSkill.fromJson(x))),
    turns: json["turns"] == null ? null : json["turns"],
  );

  Map<String, dynamic> toJson() => {
    "skills": skills == null ? null : List<dynamic>.from(skills.map((x) => x.toJson())),
    "turns": turns == null ? null : turns,
  };
}

class MulticastSkill {
  String id;
  String name;

  MulticastSkill({
    this.id,
    this.name,
  });

  factory MulticastSkill.fromJson(Map<String, dynamic> json) => MulticastSkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
  };
}

class FluffyImperil {
  int fire;
  int lightning;
  int water;
  int light;

  FluffyImperil({
    this.fire,
    this.lightning,
    this.water,
    this.light,
  });

  factory FluffyImperil.fromJson(Map<String, dynamic> json) => FluffyImperil(
    fire: json["fire"] == null ? null : json["fire"],
    lightning: json["lightning"] == null ? null : json["lightning"],
    water: json["water"] == null ? null : json["water"],
    light: json["light"] == null ? null : json["light"],
  );

  Map<String, dynamic> toJson() => {
    "fire": fire == null ? null : fire,
    "lightning": lightning == null ? null : lightning,
    "water": water == null ? null : water,
    "light": light == null ? null : light,
  };
}

class Resist {
  NameElement name;
  int percent;

  Resist({
    this.name,
    this.percent,
  });

  factory Resist.fromJson(Map<String, dynamic> json) => Resist(
    name: json["name"] == null ? null : nameElementValues.map[json["name"]],
    percent: json["percent"] == null ? null : json["percent"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : nameElementValues.reverse[name],
    "percent": percent == null ? null : percent,
  };
}

enum Target { ENEMY, ALLY, SELF, ALLY_BUT_SELF, ANY }

final targetValues = EnumValues({
  "ALLY": Target.ALLY,
  "ALLY_BUT_SELF": Target.ALLY_BUT_SELF,
  "ANY": Target.ANY,
  "ENEMY": Target.ENEMY,
  "SELF": Target.SELF
});

enum PurpleIcon { ABILITY_105_PNG, ABILITY_83_PNG, ABILITY_10_PNG, ABILITY_92_PNG }

final purpleIconValues = EnumValues({
  "ability_105.png": PurpleIcon.ABILITY_105_PNG,
  "ability_10.png": PurpleIcon.ABILITY_10_PNG,
  "ability_83.png": PurpleIcon.ABILITY_83_PNG,
  "ability_92.png": PurpleIcon.ABILITY_92_PNG
});

enum SkillType { ABILITY }

final skillTypeValues = EnumValues({
  "ability": SkillType.ABILITY
});

enum CooldownSkillIcon { ABILITY_105_PNG, ABILITY_19_PNG, ABILITY_40_PNG, ABILITY_60_PNG, ABILITY_10_PNG, ABILITY_54_PNG, ABILITY_47_PNG, ABILITY_5_PNG, GLOBAL_ABILITY_10101_PNG }

final cooldownSkillIconValues = EnumValues({
  "ability_105.png": CooldownSkillIcon.ABILITY_105_PNG,
  "ability_10.png": CooldownSkillIcon.ABILITY_10_PNG,
  "ability_19.png": CooldownSkillIcon.ABILITY_19_PNG,
  "ability_40.png": CooldownSkillIcon.ABILITY_40_PNG,
  "ability_47.png": CooldownSkillIcon.ABILITY_47_PNG,
  "ability_54.png": CooldownSkillIcon.ABILITY_54_PNG,
  "ability_5.png": CooldownSkillIcon.ABILITY_5_PNG,
  "ability_60.png": CooldownSkillIcon.ABILITY_60_PNG,
  "global_ability_10101.png": CooldownSkillIcon.GLOBAL_ABILITY_10101_PNG
});

enum CooldownSkillMove { NONE, WALK, DASH_THROUGH, DASH, WARP }

final cooldownSkillMoveValues = EnumValues({
  "dash": CooldownSkillMove.DASH,
  "dashThrough": CooldownSkillMove.DASH_THROUGH,
  "none": CooldownSkillMove.NONE,
  "walk": CooldownSkillMove.WALK,
  "warp": CooldownSkillMove.WARP
});

class FluffyMulticast {
  int time;
  MulticastType type;
  List<MulticastSkill> skills;

  FluffyMulticast({
    this.time,
    this.type,
    this.skills,
  });

  factory FluffyMulticast.fromJson(Map<String, dynamic> json) => FluffyMulticast(
    time: json["time"] == null ? null : json["time"],
    type: json["type"] == null ? null : multicastTypeValues.map[json["type"]],
    skills: json["skills"] == null ? null : List<MulticastSkill>.from(json["skills"].map((x) => MulticastSkill.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "time": time == null ? null : time,
    "type": type == null ? null : multicastTypeValues.reverse[type],
    "skills": skills == null ? null : List<dynamic>.from(skills.map((x) => x.toJson())),
  };
}

class FluffyRandomlyUse {
  TentacledSkill skill;
  int percent;

  FluffyRandomlyUse({
    this.skill,
    this.percent,
  });

  factory FluffyRandomlyUse.fromJson(Map<String, dynamic> json) => FluffyRandomlyUse(
    skill: json["skill"] == null ? null : TentacledSkill.fromJson(json["skill"]),
    percent: json["percent"] == null ? null : json["percent"],
  );

  Map<String, dynamic> toJson() => {
    "skill": skill == null ? null : skill.toJson(),
    "percent": percent == null ? null : percent,
  };
}

class TentacledSkill {
  int id;
  String name;
  String icon;
  List<HilariousEffect> effects;
  List<int> frames;
  CooldownSkillMove move;
  SkillType type;
  ChainFamily chainFamily;
  int mpCost;
  int lbCost;

  TentacledSkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.frames,
    this.move,
    this.type,
    this.chainFamily,
    this.mpCost,
    this.lbCost,
  });

  factory TentacledSkill.fromJson(Map<String, dynamic> json) => TentacledSkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : json["icon"],
    effects: json["effects"] == null ? null : List<HilariousEffect>.from(json["effects"].map((x) => HilariousEffect.fromJson(x))),
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x == null ? null : x)),
    move: json["move"] == null ? null : cooldownSkillMoveValues.map[json["move"]],
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    chainFamily: json["chainFamily"] == null ? null : chainFamilyValues.map[json["chainFamily"]],
    mpCost: json["mpCost"] == null ? null : json["mpCost"],
    lbCost: json["lbCost"] == null ? null : json["lbCost"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x == null ? null : x)),
    "move": move == null ? null : cooldownSkillMoveValues.reverse[move],
    "type": type == null ? null : skillTypeValues.reverse[type],
    "chainFamily": chainFamily == null ? null : chainFamilyValues.reverse[chainFamily],
    "mpCost": mpCost == null ? null : mpCost,
    "lbCost": lbCost == null ? null : lbCost,
  };
}

class HilariousEffect {
  AmbitiousEffect effect;
  String desc;

  HilariousEffect({
    this.effect,
    this.desc,
  });

  factory HilariousEffect.fromJson(Map<String, dynamic> json) => HilariousEffect(
    effect: json["effect"] == null ? null : AmbitiousEffect.fromJson(json["effect"]),
    desc: json["desc"] == null ? null : json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "effect": effect == null ? null : effect.toJson(),
    "desc": desc == null ? null : desc,
  };
}

class AmbitiousEffect {
  TentacledDamage damage;
  Area area;
  Target target;
  Break statsBuff;
  int turns;
  bool noUse;
  Berserk berserk;
  List<NameElement> imbue;
  PurpleImperil imperil;
  Break effectBreak;
  FluffyGainSkills gainSkills;
  LbFill lbFill;
  List<PurpleKiller> killers;
  Heal heal;
  Map<String, double> skillEnhancement;
  int turn;
  int globalMitigation;
  HealOverTurn healOverTurn;
  List<Resist> resist;
  int drawAttacks;
  int physicalMitigation;

  AmbitiousEffect({
    this.damage,
    this.area,
    this.target,
    this.statsBuff,
    this.turns,
    this.noUse,
    this.berserk,
    this.imbue,
    this.imperil,
    this.effectBreak,
    this.gainSkills,
    this.lbFill,
    this.killers,
    this.heal,
    this.skillEnhancement,
    this.turn,
    this.globalMitigation,
    this.healOverTurn,
    this.resist,
    this.drawAttacks,
    this.physicalMitigation,
  });

  factory AmbitiousEffect.fromJson(Map<String, dynamic> json) => AmbitiousEffect(
    damage: json["damage"] == null ? null : TentacledDamage.fromJson(json["damage"]),
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
    statsBuff: json["statsBuff"] == null ? null : Break.fromJson(json["statsBuff"]),
    turns: json["turns"] == null ? null : json["turns"],
    noUse: json["noUse"] == null ? null : json["noUse"],
    berserk: json["berserk"] == null ? null : Berserk.fromJson(json["berserk"]),
    imbue: json["imbue"] == null ? null : List<NameElement>.from(json["imbue"].map((x) => nameElementValues.map[x])),
    imperil: json["imperil"] == null ? null : PurpleImperil.fromJson(json["imperil"]),
    effectBreak: json["break"] == null ? null : Break.fromJson(json["break"]),
    gainSkills: json["gainSkills"] == null ? null : FluffyGainSkills.fromJson(json["gainSkills"]),
    lbFill: json["lbFill"] == null ? null : LbFill.fromJson(json["lbFill"]),
    killers: json["killers"] == null ? null : List<PurpleKiller>.from(json["killers"].map((x) => PurpleKiller.fromJson(x))),
    heal: json["heal"] == null ? null : Heal.fromJson(json["heal"]),
    skillEnhancement: json["skillEnhancement"] == null ? null : Map.from(json["skillEnhancement"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
    turn: json["turn"] == null ? null : json["turn"],
    globalMitigation: json["globalMitigation"] == null ? null : json["globalMitigation"],
    healOverTurn: json["healOverTurn"] == null ? null : HealOverTurn.fromJson(json["healOverTurn"]),
    resist: json["resist"] == null ? null : List<Resist>.from(json["resist"].map((x) => Resist.fromJson(x))),
    drawAttacks: json["drawAttacks"] == null ? null : json["drawAttacks"],
    physicalMitigation: json["physicalMitigation"] == null ? null : json["physicalMitigation"],
  );

  Map<String, dynamic> toJson() => {
    "damage": damage == null ? null : damage.toJson(),
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : targetValues.reverse[target],
    "statsBuff": statsBuff == null ? null : statsBuff.toJson(),
    "turns": turns == null ? null : turns,
    "noUse": noUse == null ? null : noUse,
    "berserk": berserk == null ? null : berserk.toJson(),
    "imbue": imbue == null ? null : List<dynamic>.from(imbue.map((x) => nameElementValues.reverse[x])),
    "imperil": imperil == null ? null : imperil.toJson(),
    "break": effectBreak == null ? null : effectBreak.toJson(),
    "gainSkills": gainSkills == null ? null : gainSkills.toJson(),
    "lbFill": lbFill == null ? null : lbFill.toJson(),
    "killers": killers == null ? null : List<dynamic>.from(killers.map((x) => x.toJson())),
    "heal": heal == null ? null : heal.toJson(),
    "skillEnhancement": skillEnhancement == null ? null : Map.from(skillEnhancement).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "turn": turn == null ? null : turn,
    "globalMitigation": globalMitigation == null ? null : globalMitigation,
    "healOverTurn": healOverTurn == null ? null : healOverTurn.toJson(),
    "resist": resist == null ? null : List<dynamic>.from(resist.map((x) => x.toJson())),
    "drawAttacks": drawAttacks == null ? null : drawAttacks,
    "physicalMitigation": physicalMitigation == null ? null : physicalMitigation,
  };
}

class TentacledDamage {
  CounterTypeEnum mecanism;
  DamageType damageType;
  double coef;
  List<NameElement> elements;
  PurpleIgnore ignore;
  bool combo;
  int minTime;
  int maxTime;
  IfUsedAgain ifUsedAgain;

  TentacledDamage({
    this.mecanism,
    this.damageType,
    this.coef,
    this.elements,
    this.ignore,
    this.combo,
    this.minTime,
    this.maxTime,
    this.ifUsedAgain,
  });

  factory TentacledDamage.fromJson(Map<String, dynamic> json) => TentacledDamage(
    mecanism: json["mecanism"] == null ? null : counterTypeEnumValues.map[json["mecanism"]],
    damageType: json["damageType"] == null ? null : damageTypeValues.map[json["damageType"]],
    coef: json["coef"] == null ? null : json["coef"].toDouble(),
    elements: json["elements"] == null ? null : List<NameElement>.from(json["elements"].map((x) => nameElementValues.map[x])),
    ignore: json["ignore"] == null ? null : PurpleIgnore.fromJson(json["ignore"]),
    combo: json["combo"] == null ? null : json["combo"],
    minTime: json["minTime"] == null ? null : json["minTime"],
    maxTime: json["maxTime"] == null ? null : json["maxTime"],
    ifUsedAgain: json["ifUsedAgain"] == null ? null : IfUsedAgain.fromJson(json["ifUsedAgain"]),
  );

  Map<String, dynamic> toJson() => {
    "mecanism": mecanism == null ? null : counterTypeEnumValues.reverse[mecanism],
    "damageType": damageType == null ? null : damageTypeValues.reverse[damageType],
    "coef": coef == null ? null : coef,
    "elements": elements == null ? null : List<dynamic>.from(elements.map((x) => nameElementValues.reverse[x])),
    "ignore": ignore == null ? null : ignore.toJson(),
    "combo": combo == null ? null : combo,
    "minTime": minTime == null ? null : minTime,
    "maxTime": maxTime == null ? null : maxTime,
    "ifUsedAgain": ifUsedAgain == null ? null : ifUsedAgain.toJson(),
  };
}

class IfUsedLastTurn {
  int id;
  String name;

  IfUsedLastTurn({
    this.id,
    this.name,
  });

  factory IfUsedLastTurn.fromJson(Map<String, dynamic> json) => IfUsedLastTurn(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
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

class Innate {
  List<Resist> resist;

  Innate({
    this.resist,
  });

  factory Innate.fromJson(Map<String, dynamic> json) => Innate(
    resist: json["resist"] == null ? null : List<Resist>.from(json["resist"].map((x) => Resist.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "resist": resist == null ? null : List<dynamic>.from(resist.map((x) => x.toJson())),
  };
}

class Lb {
  String name;
  List<LbMaxEffect> minEffects;
  List<LbMaxEffect> maxEffects;
  List<int> frames;
  CooldownSkillMove move;
  ChainFamily chainFamily;

  Lb({
    this.name,
    this.minEffects,
    this.maxEffects,
    this.frames,
    this.move,
    this.chainFamily,
  });

  factory Lb.fromJson(Map<String, dynamic> json) => Lb(
    name: json["name"] == null ? null : json["name"],
    minEffects: json["minEffects"] == null ? null : List<LbMaxEffect>.from(json["minEffects"].map((x) => LbMaxEffect.fromJson(x))),
    maxEffects: json["maxEffects"] == null ? null : List<LbMaxEffect>.from(json["maxEffects"].map((x) => LbMaxEffect.fromJson(x))),
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x == null ? null : x)),
    move: json["move"] == null ? null : cooldownSkillMoveValues.map[json["move"]],
    chainFamily: json["chainFamily"] == null ? null : chainFamilyValues.map[json["chainFamily"]],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "minEffects": minEffects == null ? null : List<dynamic>.from(minEffects.map((x) => x.toJson())),
    "maxEffects": maxEffects == null ? null : List<dynamic>.from(maxEffects.map((x) => x.toJson())),
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x == null ? null : x)),
    "move": move == null ? null : cooldownSkillMoveValues.reverse[move],
    "chainFamily": chainFamily == null ? null : chainFamilyValues.reverse[chainFamily],
  };
}

class LbMaxEffect {
  CunningEffect effect;
  String desc;

  LbMaxEffect({
    this.effect,
    this.desc,
  });

  factory LbMaxEffect.fromJson(Map<String, dynamic> json) => LbMaxEffect(
    effect: json["effect"] == null ? null : CunningEffect.fromJson(json["effect"]),
    desc: json["desc"] == null ? null : json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "effect": effect == null ? null : effect.toJson(),
    "desc": desc == null ? null : desc,
  };
}

class CunningEffect {
  StickyDamage damage;
  Area area;
  Target target;
  Break effectBreak;
  int turns;
  bool noUse;
  Break statsBuff;
  FluffyGainSkills gainSkills;
  PurpleImperil imperil;
  Heal heal;
  List<Resist> resist;
  Berserk berserk;
  int globalMitigation;
  List<NameElement> imbue;
  HealOverTurn healOverTurn;
  int drawAttacks;
  LbFill lbFill;
  Map<String, double> skillEnhancement;
  int turn;
  AoeCover aoeCover;
  List<PurpleKiller> killers;
  int hpSacrifice;
  List<TentacledRandomlyUse> randomlyUse;

  CunningEffect({
    this.damage,
    this.area,
    this.target,
    this.effectBreak,
    this.turns,
    this.noUse,
    this.statsBuff,
    this.gainSkills,
    this.imperil,
    this.heal,
    this.resist,
    this.berserk,
    this.globalMitigation,
    this.imbue,
    this.healOverTurn,
    this.drawAttacks,
    this.lbFill,
    this.skillEnhancement,
    this.turn,
    this.aoeCover,
    this.killers,
    this.hpSacrifice,
    this.randomlyUse,
  });

  factory CunningEffect.fromJson(Map<String, dynamic> json) => CunningEffect(
    damage: json["damage"] == null ? null : StickyDamage.fromJson(json["damage"]),
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
    effectBreak: json["break"] == null ? null : Break.fromJson(json["break"]),
    turns: json["turns"] == null ? null : json["turns"],
    noUse: json["noUse"] == null ? null : json["noUse"],
    statsBuff: json["statsBuff"] == null ? null : Break.fromJson(json["statsBuff"]),
    gainSkills: json["gainSkills"] == null ? null : FluffyGainSkills.fromJson(json["gainSkills"]),
    imperil: json["imperil"] == null ? null : PurpleImperil.fromJson(json["imperil"]),
    heal: json["heal"] == null ? null : Heal.fromJson(json["heal"]),
    resist: json["resist"] == null ? null : List<Resist>.from(json["resist"].map((x) => Resist.fromJson(x))),
    berserk: json["berserk"] == null ? null : Berserk.fromJson(json["berserk"]),
    globalMitigation: json["globalMitigation"] == null ? null : json["globalMitigation"],
    imbue: json["imbue"] == null ? null : List<NameElement>.from(json["imbue"].map((x) => nameElementValues.map[x])),
    healOverTurn: json["healOverTurn"] == null ? null : HealOverTurn.fromJson(json["healOverTurn"]),
    drawAttacks: json["drawAttacks"] == null ? null : json["drawAttacks"],
    lbFill: json["lbFill"] == null ? null : LbFill.fromJson(json["lbFill"]),
    skillEnhancement: json["skillEnhancement"] == null ? null : Map.from(json["skillEnhancement"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
    turn: json["turn"] == null ? null : json["turn"],
    aoeCover: json["aoeCover"] == null ? null : AoeCover.fromJson(json["aoeCover"]),
    killers: json["killers"] == null ? null : List<PurpleKiller>.from(json["killers"].map((x) => PurpleKiller.fromJson(x))),
    hpSacrifice: json["hpSacrifice"] == null ? null : json["hpSacrifice"],
    randomlyUse: json["randomlyUse"] == null ? null : List<TentacledRandomlyUse>.from(json["randomlyUse"].map((x) => TentacledRandomlyUse.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "damage": damage == null ? null : damage.toJson(),
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : targetValues.reverse[target],
    "break": effectBreak == null ? null : effectBreak.toJson(),
    "turns": turns == null ? null : turns,
    "noUse": noUse == null ? null : noUse,
    "statsBuff": statsBuff == null ? null : statsBuff.toJson(),
    "gainSkills": gainSkills == null ? null : gainSkills.toJson(),
    "imperil": imperil == null ? null : imperil.toJson(),
    "heal": heal == null ? null : heal.toJson(),
    "resist": resist == null ? null : List<dynamic>.from(resist.map((x) => x.toJson())),
    "berserk": berserk == null ? null : berserk.toJson(),
    "globalMitigation": globalMitigation == null ? null : globalMitigation,
    "imbue": imbue == null ? null : List<dynamic>.from(imbue.map((x) => nameElementValues.reverse[x])),
    "healOverTurn": healOverTurn == null ? null : healOverTurn.toJson(),
    "drawAttacks": drawAttacks == null ? null : drawAttacks,
    "lbFill": lbFill == null ? null : lbFill.toJson(),
    "skillEnhancement": skillEnhancement == null ? null : Map.from(skillEnhancement).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "turn": turn == null ? null : turn,
    "aoeCover": aoeCover == null ? null : aoeCover.toJson(),
    "killers": killers == null ? null : List<dynamic>.from(killers.map((x) => x.toJson())),
    "hpSacrifice": hpSacrifice == null ? null : hpSacrifice,
    "randomlyUse": randomlyUse == null ? null : List<dynamic>.from(randomlyUse.map((x) => x.toJson())),
  };
}

class StickyDamage {
  CounterTypeEnum mecanism;
  DamageType damageType;
  double coef;
  List<NameElement> elements;
  PurpleIgnore ignore;
  Use use;
  double magCoef;
  double sprCoef;
  double magSplit;
  double sprSplit;
  int delay;

  StickyDamage({
    this.mecanism,
    this.damageType,
    this.coef,
    this.elements,
    this.ignore,
    this.use,
    this.magCoef,
    this.sprCoef,
    this.magSplit,
    this.sprSplit,
    this.delay,
  });

  factory StickyDamage.fromJson(Map<String, dynamic> json) => StickyDamage(
    mecanism: json["mecanism"] == null ? null : counterTypeEnumValues.map[json["mecanism"]],
    damageType: json["damageType"] == null ? null : damageTypeValues.map[json["damageType"]],
    coef: json["coef"] == null ? null : json["coef"].toDouble(),
    elements: json["elements"] == null ? null : List<NameElement>.from(json["elements"].map((x) => nameElementValues.map[x])),
    ignore: json["ignore"] == null ? null : PurpleIgnore.fromJson(json["ignore"]),
    use: json["use"] == null ? null : Use.fromJson(json["use"]),
    magCoef: json["magCoef"] == null ? null : json["magCoef"].toDouble(),
    sprCoef: json["sprCoef"] == null ? null : json["sprCoef"].toDouble(),
    magSplit: json["magSplit"] == null ? null : json["magSplit"].toDouble(),
    sprSplit: json["sprSplit"] == null ? null : json["sprSplit"].toDouble(),
    delay: json["delay"] == null ? null : json["delay"],
  );

  Map<String, dynamic> toJson() => {
    "mecanism": mecanism == null ? null : counterTypeEnumValues.reverse[mecanism],
    "damageType": damageType == null ? null : damageTypeValues.reverse[damageType],
    "coef": coef == null ? null : coef,
    "elements": elements == null ? null : List<dynamic>.from(elements.map((x) => nameElementValues.reverse[x])),
    "ignore": ignore == null ? null : ignore.toJson(),
    "use": use == null ? null : use.toJson(),
    "magCoef": magCoef == null ? null : magCoef,
    "sprCoef": sprCoef == null ? null : sprCoef,
    "magSplit": magSplit == null ? null : magSplit,
    "sprSplit": sprSplit == null ? null : sprSplit,
    "delay": delay == null ? null : delay,
  };
}

class TentacledRandomlyUse {
  StickySkill skill;
  int percent;

  TentacledRandomlyUse({
    this.skill,
    this.percent,
  });

  factory TentacledRandomlyUse.fromJson(Map<String, dynamic> json) => TentacledRandomlyUse(
    skill: json["skill"] == null ? null : StickySkill.fromJson(json["skill"]),
    percent: json["percent"] == null ? null : json["percent"],
  );

  Map<String, dynamic> toJson() => {
    "skill": skill == null ? null : skill.toJson(),
    "percent": percent == null ? null : percent,
  };
}

class StickySkill {
  int id;
  String name;
  MagicIcon icon;
  List<MagentaEffect> effects;
  SkillType type;
  int mpCost;

  StickySkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.type,
    this.mpCost,
  });

  factory StickySkill.fromJson(Map<String, dynamic> json) => StickySkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : magicIconValues.map[json["icon"]],
    effects: json["effects"] == null ? null : List<MagentaEffect>.from(json["effects"].map((x) => MagentaEffect.fromJson(x))),
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    mpCost: json["mpCost"] == null ? null : json["mpCost"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : magicIconValues.reverse[icon],
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "type": type == null ? null : skillTypeValues.reverse[type],
    "mpCost": mpCost == null ? null : mpCost,
  };
}

class MagentaEffect {
  FriskyEffect effect;
  String desc;

  MagentaEffect({
    this.effect,
    this.desc,
  });

  factory MagentaEffect.fromJson(Map<String, dynamic> json) => MagentaEffect(
    effect: json["effect"] == null ? null : FriskyEffect.fromJson(json["effect"]),
    desc: json["desc"] == null ? null : json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "effect": effect == null ? null : effect.toJson(),
    "desc": desc == null ? null : desc,
  };
}

class FriskyEffect {
  bool noUse;
  Area area;
  Area target;

  FriskyEffect({
    this.noUse,
    this.area,
    this.target,
  });

  factory FriskyEffect.fromJson(Map<String, dynamic> json) => FriskyEffect(
    noUse: json["noUse"] == null ? null : json["noUse"],
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : areaValues.map[json["target"]],
  );

  Map<String, dynamic> toJson() => {
    "noUse": noUse == null ? null : noUse,
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : areaValues.reverse[target],
  };
}

class MagicElement {
  String id;
  String name;
  MagicIcon icon;
  List<MagicEffect> effects;
  MagicEnum magic;
  List<int> frames;
  CounterTypeEnum move;
  SkillType type;
  int mpCost;
  int rarity;
  int level;
  ChainFamily chainFamily;
  List<String> unlockedBy;

  MagicElement({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.magic,
    this.frames,
    this.move,
    this.type,
    this.mpCost,
    this.rarity,
    this.level,
    this.chainFamily,
    this.unlockedBy,
  });

  factory MagicElement.fromJson(Map<String, dynamic> json) => MagicElement(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : magicIconValues.map[json["icon"]],
    effects: json["effects"] == null ? null : List<MagicEffect>.from(json["effects"].map((x) => MagicEffect.fromJson(x))),
    magic: json["magic"] == null ? null : magicEnumValues.map[json["magic"]],
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x)),
    move: json["move"] == null ? null : counterTypeEnumValues.map[json["move"]],
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    mpCost: json["mpCost"] == null ? null : json["mpCost"],
    rarity: json["rarity"] == null ? null : json["rarity"],
    level: json["level"] == null ? null : json["level"],
    chainFamily: json["chainFamily"] == null ? null : chainFamilyValues.map[json["chainFamily"]],
    unlockedBy: json["unlockedBy"] == null ? null : List<String>.from(json["unlockedBy"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : magicIconValues.reverse[icon],
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "magic": magic == null ? null : magicEnumValues.reverse[magic],
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x)),
    "move": move == null ? null : counterTypeEnumValues.reverse[move],
    "type": type == null ? null : skillTypeValues.reverse[type],
    "mpCost": mpCost == null ? null : mpCost,
    "rarity": rarity == null ? null : rarity,
    "level": level == null ? null : level,
    "chainFamily": chainFamily == null ? null : chainFamilyValues.reverse[chainFamily],
    "unlockedBy": unlockedBy == null ? null : List<dynamic>.from(unlockedBy.map((x) => x)),
  };
}

class MagicEffect {
  MischievousEffect effect;
  String desc;

  MagicEffect({
    this.effect,
    this.desc,
  });

  factory MagicEffect.fromJson(Map<String, dynamic> json) => MagicEffect(
    effect: json["effect"] == null ? null : MischievousEffect.fromJson(json["effect"]),
    desc: json["desc"] == null ? null : json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "effect": effect == null ? null : effect.toJson(),
    "desc": desc == null ? null : desc,
  };
}

class MischievousEffect {
  IndigoDamage damage;
  Area area;
  Target target;
  Heal heal;
  Break statsBuff;
  int turns;
  bool noUse;
  PurpleImperil imperil;
  List<Resist> resist;
  HealOverTurn healOverTurn;
  Break effectBreak;
  LbFill lbFill;
  int globalMitigation;
  int physicalMitigation;
  int magicalMitigation;
  SkillEnhancement skillEnhancement;
  int turn;
  List<NameElement> imbue;
  List<int> frames;
  List<int> repartition;

  MischievousEffect({
    this.damage,
    this.area,
    this.target,
    this.heal,
    this.statsBuff,
    this.turns,
    this.noUse,
    this.imperil,
    this.resist,
    this.healOverTurn,
    this.effectBreak,
    this.lbFill,
    this.globalMitigation,
    this.physicalMitigation,
    this.magicalMitigation,
    this.skillEnhancement,
    this.turn,
    this.imbue,
    this.frames,
    this.repartition,
  });

  factory MischievousEffect.fromJson(Map<String, dynamic> json) => MischievousEffect(
    damage: json["damage"] == null ? null : IndigoDamage.fromJson(json["damage"]),
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
    heal: json["heal"] == null ? null : Heal.fromJson(json["heal"]),
    statsBuff: json["statsBuff"] == null ? null : Break.fromJson(json["statsBuff"]),
    turns: json["turns"] == null ? null : json["turns"],
    noUse: json["noUse"] == null ? null : json["noUse"],
    imperil: json["imperil"] == null ? null : PurpleImperil.fromJson(json["imperil"]),
    resist: json["resist"] == null ? null : List<Resist>.from(json["resist"].map((x) => Resist.fromJson(x))),
    healOverTurn: json["healOverTurn"] == null ? null : HealOverTurn.fromJson(json["healOverTurn"]),
    effectBreak: json["break"] == null ? null : Break.fromJson(json["break"]),
    lbFill: json["lbFill"] == null ? null : LbFill.fromJson(json["lbFill"]),
    globalMitigation: json["globalMitigation"] == null ? null : json["globalMitigation"],
    physicalMitigation: json["physicalMitigation"] == null ? null : json["physicalMitigation"],
    magicalMitigation: json["magicalMitigation"] == null ? null : json["magicalMitigation"],
    skillEnhancement: json["skillEnhancement"] == null ? null : SkillEnhancement.fromJson(json["skillEnhancement"]),
    turn: json["turn"] == null ? null : json["turn"],
    imbue: json["imbue"] == null ? null : List<NameElement>.from(json["imbue"].map((x) => nameElementValues.map[x])),
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x)),
    repartition: json["repartition"] == null ? null : List<int>.from(json["repartition"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "damage": damage == null ? null : damage.toJson(),
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : targetValues.reverse[target],
    "heal": heal == null ? null : heal.toJson(),
    "statsBuff": statsBuff == null ? null : statsBuff.toJson(),
    "turns": turns == null ? null : turns,
    "noUse": noUse == null ? null : noUse,
    "imperil": imperil == null ? null : imperil.toJson(),
    "resist": resist == null ? null : List<dynamic>.from(resist.map((x) => x.toJson())),
    "healOverTurn": healOverTurn == null ? null : healOverTurn.toJson(),
    "break": effectBreak == null ? null : effectBreak.toJson(),
    "lbFill": lbFill == null ? null : lbFill.toJson(),
    "globalMitigation": globalMitigation == null ? null : globalMitigation,
    "physicalMitigation": physicalMitigation == null ? null : physicalMitigation,
    "magicalMitigation": magicalMitigation == null ? null : magicalMitigation,
    "skillEnhancement": skillEnhancement == null ? null : skillEnhancement.toJson(),
    "turn": turn == null ? null : turn,
    "imbue": imbue == null ? null : List<dynamic>.from(imbue.map((x) => nameElementValues.reverse[x])),
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x)),
    "repartition": repartition == null ? null : List<dynamic>.from(repartition.map((x) => x)),
  };
}

class IndigoDamage {
  CounterTypeEnum mecanism;
  DamageType damageType;
  double coef;
  List<NameElement> elements;
  Use use;
  FluffyIgnore ignore;
  double stack;
  int maxStack;
  bool jump;
  int delay;

  IndigoDamage({
    this.mecanism,
    this.damageType,
    this.coef,
    this.elements,
    this.use,
    this.ignore,
    this.stack,
    this.maxStack,
    this.jump,
    this.delay,
  });

  factory IndigoDamage.fromJson(Map<String, dynamic> json) => IndigoDamage(
    mecanism: json["mecanism"] == null ? null : counterTypeEnumValues.map[json["mecanism"]],
    damageType: json["damageType"] == null ? null : damageTypeValues.map[json["damageType"]],
    coef: json["coef"] == null ? null : json["coef"].toDouble(),
    elements: json["elements"] == null ? null : List<NameElement>.from(json["elements"].map((x) => nameElementValues.map[x])),
    use: json["use"] == null ? null : Use.fromJson(json["use"]),
    ignore: json["ignore"] == null ? null : FluffyIgnore.fromJson(json["ignore"]),
    stack: json["stack"] == null ? null : json["stack"].toDouble(),
    maxStack: json["maxStack"] == null ? null : json["maxStack"],
    jump: json["jump"] == null ? null : json["jump"],
    delay: json["delay"] == null ? null : json["delay"],
  );

  Map<String, dynamic> toJson() => {
    "mecanism": mecanism == null ? null : counterTypeEnumValues.reverse[mecanism],
    "damageType": damageType == null ? null : damageTypeValues.reverse[damageType],
    "coef": coef == null ? null : coef,
    "elements": elements == null ? null : List<dynamic>.from(elements.map((x) => nameElementValues.reverse[x])),
    "use": use == null ? null : use.toJson(),
    "ignore": ignore == null ? null : ignore.toJson(),
    "stack": stack == null ? null : stack,
    "maxStack": maxStack == null ? null : maxStack,
    "jump": jump == null ? null : jump,
    "delay": delay == null ? null : delay,
  };
}

class FluffyIgnore {
  int spr;

  FluffyIgnore({
    this.spr,
  });

  factory FluffyIgnore.fromJson(Map<String, dynamic> json) => FluffyIgnore(
    spr: json["spr"] == null ? null : json["spr"],
  );

  Map<String, dynamic> toJson() => {
    "spr": spr == null ? null : spr,
  };
}

class SkillEnhancement {
  double the40090;

  SkillEnhancement({
    this.the40090,
  });

  factory SkillEnhancement.fromJson(Map<String, dynamic> json) => SkillEnhancement(
    the40090: json["40090"] == null ? null : json["40090"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "40090": the40090 == null ? null : the40090,
  };
}

enum MagicEnum { BLACK, WHITE, GREEN, BLUE }

final magicEnumValues = EnumValues({
  "black": MagicEnum.BLACK,
  "blue": MagicEnum.BLUE,
  "green": MagicEnum.GREEN,
  "white": MagicEnum.WHITE
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

class Passive {
  String name;
  String id;
  String icon;
  List<PassiveEffect> effects;
  int rarity;
  int level;
  List<dynamic> equipedConditions;

  Passive({
    this.name,
    this.id,
    this.icon,
    this.effects,
    this.rarity,
    this.level,
    this.equipedConditions,
  });

  factory Passive.fromJson(Map<String, dynamic> json) => Passive(
    name: json["name"] == null ? null : json["name"],
    id: json["id"] == null ? null : json["id"],
    icon: json["icon"] == null ? null : json["icon"],
    effects: json["effects"] == null ? null : List<PassiveEffect>.from(json["effects"].map((x) => PassiveEffect.fromJson(x))),
    rarity: json["rarity"] == null ? null : json["rarity"],
    level: json["level"] == null ? null : json["level"],
    equipedConditions: json["equipedConditions"] == null ? null : List<dynamic>.from(json["equipedConditions"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "id": id == null ? null : id,
    "icon": icon == null ? null : icon,
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "rarity": rarity == null ? null : rarity,
    "level": level == null ? null : level,
    "equipedConditions": equipedConditions == null ? null : List<dynamic>.from(equipedConditions.map((x) => x)),
  };
}

class PassiveEffect {
  BraggadociousEffect effect;
  String desc;

  PassiveEffect({
    this.effect,
    this.desc,
  });

  factory PassiveEffect.fromJson(Map<String, dynamic> json) => PassiveEffect(
    effect: json["effect"] == null ? null : BraggadociousEffect.fromJson(json["effect"]),
    desc: json["desc"] == null ? null : json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "effect": effect == null ? null : effect.toJson(),
    "desc": desc == null ? null : desc,
  };
}

class BraggadociousEffect {
  int hp;
  StCover stCover;
  int evoMag;
  int def;
  int lbFillRate;
  List<Resist> resist;
  int mpRefresh;
  List<PurpleKiller> killers;
  List<dynamic> equipedConditions;
  int atk;
  MaxStats singleWieldingOneHanded;
  int mag;
  int spr;
  CounterSkill counterSkill;
  CounterTypeEnum counterType;
  int percent;
  int mp;
  MaxStats singleWielding;
  Break dualWielding;
  Map<String, double> skillEnhancement;
  Mitigation evade;
  List<Special> special;
  LbFill lbPerTurn;
  TentacledGainSkills gainSkills;
  int drawAttacks;
  List<Equip> partialDualWield;
  AutoCastedSkill autoCastedSkill;
  int jumpDamage;
  int lbDamage;
  ReplaceLb replaceLb;
  int levelCondition;
  bool improvedDw;
  Map<String, MaxStats> esperStatsBonus;
  List<Equip> allowUseOf;
  PurpleMulticast multicast;
  bool noUse;

  BraggadociousEffect({
    this.hp,
    this.stCover,
    this.evoMag,
    this.def,
    this.lbFillRate,
    this.resist,
    this.mpRefresh,
    this.killers,
    this.equipedConditions,
    this.atk,
    this.singleWieldingOneHanded,
    this.mag,
    this.spr,
    this.counterSkill,
    this.counterType,
    this.percent,
    this.mp,
    this.singleWielding,
    this.dualWielding,
    this.skillEnhancement,
    this.evade,
    this.special,
    this.lbPerTurn,
    this.gainSkills,
    this.drawAttacks,
    this.partialDualWield,
    this.autoCastedSkill,
    this.jumpDamage,
    this.lbDamage,
    this.replaceLb,
    this.levelCondition,
    this.improvedDw,
    this.esperStatsBonus,
    this.allowUseOf,
    this.multicast,
    this.noUse,
  });

  factory BraggadociousEffect.fromJson(Map<String, dynamic> json) => BraggadociousEffect(
    hp: json["hp%"] == null ? null : json["hp%"],
    stCover: json["stCover"] == null ? null : StCover.fromJson(json["stCover"]),
    evoMag: json["evoMag"] == null ? null : json["evoMag"],
    def: json["def%"] == null ? null : json["def%"],
    lbFillRate: json["lbFillRate"] == null ? null : json["lbFillRate"],
    resist: json["resist"] == null ? null : List<Resist>.from(json["resist"].map((x) => Resist.fromJson(x))),
    mpRefresh: json["mpRefresh"] == null ? null : json["mpRefresh"],
    killers: json["killers"] == null ? null : List<PurpleKiller>.from(json["killers"].map((x) => PurpleKiller.fromJson(x))),
    equipedConditions: json["equipedConditions"] == null ? null : List<dynamic>.from(json["equipedConditions"].map((x) => x)),
    atk: json["atk%"] == null ? null : json["atk%"],
    singleWieldingOneHanded: json["singleWieldingOneHanded"] == null ? null : MaxStats.fromJson(json["singleWieldingOneHanded"]),
    mag: json["mag%"] == null ? null : json["mag%"],
    spr: json["spr%"] == null ? null : json["spr%"],
    counterSkill: json["counterSkill"] == null ? null : CounterSkill.fromJson(json["counterSkill"]),
    counterType: json["counterType"] == null ? null : counterTypeEnumValues.map[json["counterType"]],
    percent: json["percent"] == null ? null : json["percent"],
    mp: json["mp%"] == null ? null : json["mp%"],
    singleWielding: json["singleWielding"] == null ? null : MaxStats.fromJson(json["singleWielding"]),
    dualWielding: json["dualWielding"] == null ? null : Break.fromJson(json["dualWielding"]),
    skillEnhancement: json["skillEnhancement"] == null ? null : Map.from(json["skillEnhancement"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
    evade: json["evade"] == null ? null : Mitigation.fromJson(json["evade"]),
    special: json["special"] == null ? null : List<Special>.from(json["special"].map((x) => specialValues.map[x])),
    lbPerTurn: json["lbPerTurn"] == null ? null : LbFill.fromJson(json["lbPerTurn"]),
    gainSkills: json["gainSkills"] == null ? null : TentacledGainSkills.fromJson(json["gainSkills"]),
    drawAttacks: json["drawAttacks"] == null ? null : json["drawAttacks"],
    partialDualWield: json["partialDualWield"] == null ? null : List<Equip>.from(json["partialDualWield"].map((x) => equipValues.map[x])),
    autoCastedSkill: json["autoCastedSkill"] == null ? null : AutoCastedSkill.fromJson(json["autoCastedSkill"]),
    jumpDamage: json["jumpDamage"] == null ? null : json["jumpDamage"],
    lbDamage: json["lbDamage"] == null ? null : json["lbDamage"],
    replaceLb: json["replaceLb"] == null ? null : ReplaceLb.fromJson(json["replaceLb"]),
    levelCondition: json["levelCondition"] == null ? null : json["levelCondition"],
    improvedDw: json["improvedDW"] == null ? null : json["improvedDW"],
    esperStatsBonus: json["esperStatsBonus"] == null ? null : Map.from(json["esperStatsBonus"]).map((k, v) => MapEntry<String, MaxStats>(k, MaxStats.fromJson(v))),
    allowUseOf: json["allowUseOf"] == null ? null : List<Equip>.from(json["allowUseOf"].map((x) => equipValues.map[x])),
    multicast: json["multicast"] == null ? null : PurpleMulticast.fromJson(json["multicast"]),
    noUse: json["noUse"] == null ? null : json["noUse"],
  );

  Map<String, dynamic> toJson() => {
    "hp%": hp == null ? null : hp,
    "stCover": stCover == null ? null : stCover.toJson(),
    "evoMag": evoMag == null ? null : evoMag,
    "def%": def == null ? null : def,
    "lbFillRate": lbFillRate == null ? null : lbFillRate,
    "resist": resist == null ? null : List<dynamic>.from(resist.map((x) => x.toJson())),
    "mpRefresh": mpRefresh == null ? null : mpRefresh,
    "killers": killers == null ? null : List<dynamic>.from(killers.map((x) => x.toJson())),
    "equipedConditions": equipedConditions == null ? null : List<dynamic>.from(equipedConditions.map((x) => x)),
    "atk%": atk == null ? null : atk,
    "singleWieldingOneHanded": singleWieldingOneHanded == null ? null : singleWieldingOneHanded.toJson(),
    "mag%": mag == null ? null : mag,
    "spr%": spr == null ? null : spr,
    "counterSkill": counterSkill == null ? null : counterSkill.toJson(),
    "counterType": counterType == null ? null : counterTypeEnumValues.reverse[counterType],
    "percent": percent == null ? null : percent,
    "mp%": mp == null ? null : mp,
    "singleWielding": singleWielding == null ? null : singleWielding.toJson(),
    "dualWielding": dualWielding == null ? null : dualWielding.toJson(),
    "skillEnhancement": skillEnhancement == null ? null : Map.from(skillEnhancement).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "evade": evade == null ? null : evade.toJson(),
    "special": special == null ? null : List<dynamic>.from(special.map((x) => specialValues.reverse[x])),
    "lbPerTurn": lbPerTurn == null ? null : lbPerTurn.toJson(),
    "gainSkills": gainSkills == null ? null : gainSkills.toJson(),
    "drawAttacks": drawAttacks == null ? null : drawAttacks,
    "partialDualWield": partialDualWield == null ? null : List<dynamic>.from(partialDualWield.map((x) => equipValues.reverse[x])),
    "autoCastedSkill": autoCastedSkill == null ? null : autoCastedSkill.toJson(),
    "jumpDamage": jumpDamage == null ? null : jumpDamage,
    "lbDamage": lbDamage == null ? null : lbDamage,
    "replaceLb": replaceLb == null ? null : replaceLb.toJson(),
    "levelCondition": levelCondition == null ? null : levelCondition,
    "improvedDW": improvedDw == null ? null : improvedDw,
    "esperStatsBonus": esperStatsBonus == null ? null : Map.from(esperStatsBonus).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "allowUseOf": allowUseOf == null ? null : List<dynamic>.from(allowUseOf.map((x) => equipValues.reverse[x])),
    "multicast": multicast == null ? null : multicast.toJson(),
    "noUse": noUse == null ? null : noUse,
  };
}

class AutoCastedSkill {
  String id;
  String name;
  String icon;
  List<AutoCastedSkillEffect> effects;
  SkillType type;
  List<String> unlockedBy;
  int mpCost;

  AutoCastedSkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.type,
    this.unlockedBy,
    this.mpCost,
  });

  factory AutoCastedSkill.fromJson(Map<String, dynamic> json) => AutoCastedSkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : json["icon"],
    effects: json["effects"] == null ? null : List<AutoCastedSkillEffect>.from(json["effects"].map((x) => AutoCastedSkillEffect.fromJson(x))),
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    unlockedBy: json["unlockedBy"] == null ? null : List<String>.from(json["unlockedBy"].map((x) => x)),
    mpCost: json["mpCost"] == null ? null : json["mpCost"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "type": type == null ? null : skillTypeValues.reverse[type],
    "unlockedBy": unlockedBy == null ? null : List<dynamic>.from(unlockedBy.map((x) => x)),
    "mpCost": mpCost == null ? null : mpCost,
  };
}

class AutoCastedSkillEffect {
  Effect1 effect;
  String desc;

  AutoCastedSkillEffect({
    this.effect,
    this.desc,
  });

  factory AutoCastedSkillEffect.fromJson(Map<String, dynamic> json) => AutoCastedSkillEffect(
    effect: json["effect"] == null ? null : Effect1.fromJson(json["effect"]),
    desc: json["desc"] == null ? null : json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "effect": effect == null ? null : effect.toJson(),
    "desc": desc == null ? null : desc,
  };
}

class Effect1 {
  bool noUse;
  Area area;
  Target target;
  int physicalMitigation;
  int turns;
  PurpleGainSkills gainSkills;
  int magicalMitigation;
  int globalMitigation;
  Break statsBuff;
  Map<String, int> skillEnhancement;
  int turn;
  LbFill lbFill;
  List<FluffyKiller> killers;
  List<Resist> resist;

  Effect1({
    this.noUse,
    this.area,
    this.target,
    this.physicalMitigation,
    this.turns,
    this.gainSkills,
    this.magicalMitigation,
    this.globalMitigation,
    this.statsBuff,
    this.skillEnhancement,
    this.turn,
    this.lbFill,
    this.killers,
    this.resist,
  });

  factory Effect1.fromJson(Map<String, dynamic> json) => Effect1(
    noUse: json["noUse"] == null ? null : json["noUse"],
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
    physicalMitigation: json["physicalMitigation"] == null ? null : json["physicalMitigation"],
    turns: json["turns"] == null ? null : json["turns"],
    gainSkills: json["gainSkills"] == null ? null : PurpleGainSkills.fromJson(json["gainSkills"]),
    magicalMitigation: json["magicalMitigation"] == null ? null : json["magicalMitigation"],
    globalMitigation: json["globalMitigation"] == null ? null : json["globalMitigation"],
    statsBuff: json["statsBuff"] == null ? null : Break.fromJson(json["statsBuff"]),
    skillEnhancement: json["skillEnhancement"] == null ? null : Map.from(json["skillEnhancement"]).map((k, v) => MapEntry<String, int>(k, v)),
    turn: json["turn"] == null ? null : json["turn"],
    lbFill: json["lbFill"] == null ? null : LbFill.fromJson(json["lbFill"]),
    killers: json["killers"] == null ? null : List<FluffyKiller>.from(json["killers"].map((x) => FluffyKiller.fromJson(x))),
    resist: json["resist"] == null ? null : List<Resist>.from(json["resist"].map((x) => Resist.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "noUse": noUse == null ? null : noUse,
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : targetValues.reverse[target],
    "physicalMitigation": physicalMitigation == null ? null : physicalMitigation,
    "turns": turns == null ? null : turns,
    "gainSkills": gainSkills == null ? null : gainSkills.toJson(),
    "magicalMitigation": magicalMitigation == null ? null : magicalMitigation,
    "globalMitigation": globalMitigation == null ? null : globalMitigation,
    "statsBuff": statsBuff == null ? null : statsBuff.toJson(),
    "skillEnhancement": skillEnhancement == null ? null : Map.from(skillEnhancement).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "turn": turn == null ? null : turn,
    "lbFill": lbFill == null ? null : lbFill.toJson(),
    "killers": killers == null ? null : List<dynamic>.from(killers.map((x) => x.toJson())),
    "resist": resist == null ? null : List<dynamic>.from(resist.map((x) => x.toJson())),
  };
}

class FluffyKiller {
  RaceEnum name;
  int magical;

  FluffyKiller({
    this.name,
    this.magical,
  });

  factory FluffyKiller.fromJson(Map<String, dynamic> json) => FluffyKiller(
    name: json["name"] == null ? null : raceEnumValues.map[json["name"]],
    magical: json["magical"] == null ? null : json["magical"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : raceEnumValues.reverse[name],
    "magical": magical == null ? null : magical,
  };
}

class CounterSkill {
  int id;
  String name;
  String icon;
  List<CounterSkillEffect> effects;
  List<int> frames;
  CooldownSkillMove move;
  SkillType type;
  int mpCost;
  ChainFamily chainFamily;
  MagicEnum magic;

  CounterSkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.frames,
    this.move,
    this.type,
    this.mpCost,
    this.chainFamily,
    this.magic,
  });

  factory CounterSkill.fromJson(Map<String, dynamic> json) => CounterSkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : json["icon"],
    effects: json["effects"] == null ? null : List<CounterSkillEffect>.from(json["effects"].map((x) => CounterSkillEffect.fromJson(x))),
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x)),
    move: json["move"] == null ? null : cooldownSkillMoveValues.map[json["move"]],
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    mpCost: json["mpCost"] == null ? null : json["mpCost"],
    chainFamily: json["chainFamily"] == null ? null : chainFamilyValues.map[json["chainFamily"]],
    magic: json["magic"] == null ? null : magicEnumValues.map[json["magic"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x)),
    "move": move == null ? null : cooldownSkillMoveValues.reverse[move],
    "type": type == null ? null : skillTypeValues.reverse[type],
    "mpCost": mpCost == null ? null : mpCost,
    "chainFamily": chainFamily == null ? null : chainFamilyValues.reverse[chainFamily],
    "magic": magic == null ? null : magicEnumValues.reverse[magic],
  };
}

class CounterSkillEffect {
  Effect2 effect;
  String desc;

  CounterSkillEffect({
    this.effect,
    this.desc,
  });

  factory CounterSkillEffect.fromJson(Map<String, dynamic> json) => CounterSkillEffect(
    effect: json["effect"] == null ? null : Effect2.fromJson(json["effect"]),
    desc: json["desc"] == null ? null : json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "effect": effect == null ? null : effect.toJson(),
    "desc": desc == null ? null : desc,
  };
}

class Effect2 {
  IndecentDamage damage;
  Area area;
  Target target;
  Heal heal;
  Break statsBuff;
  int turns;
  Break effectBreak;
  PurpleImperil imperil;
  bool noUse;
  List<StickyRandomlyUse> randomlyUse;
  PurpleGainSkills gainSkills;
  List<PurpleKiller> killers;
  LbFill lbFill;
  List<Resist> resist;
  HealOverTurn healOverTurn;
  int physicalMitigation;
  int magicalMitigation;
  int globalMitigation;
  Map<String, int> skillEnhancement;
  int turn;
  List<NameElement> imbue;

  Effect2({
    this.damage,
    this.area,
    this.target,
    this.heal,
    this.statsBuff,
    this.turns,
    this.effectBreak,
    this.imperil,
    this.noUse,
    this.randomlyUse,
    this.gainSkills,
    this.killers,
    this.lbFill,
    this.resist,
    this.healOverTurn,
    this.physicalMitigation,
    this.magicalMitigation,
    this.globalMitigation,
    this.skillEnhancement,
    this.turn,
    this.imbue,
  });

  factory Effect2.fromJson(Map<String, dynamic> json) => Effect2(
    damage: json["damage"] == null ? null : IndecentDamage.fromJson(json["damage"]),
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
    heal: json["heal"] == null ? null : Heal.fromJson(json["heal"]),
    statsBuff: json["statsBuff"] == null ? null : Break.fromJson(json["statsBuff"]),
    turns: json["turns"] == null ? null : json["turns"],
    effectBreak: json["break"] == null ? null : Break.fromJson(json["break"]),
    imperil: json["imperil"] == null ? null : PurpleImperil.fromJson(json["imperil"]),
    noUse: json["noUse"] == null ? null : json["noUse"],
    randomlyUse: json["randomlyUse"] == null ? null : List<StickyRandomlyUse>.from(json["randomlyUse"].map((x) => StickyRandomlyUse.fromJson(x))),
    gainSkills: json["gainSkills"] == null ? null : PurpleGainSkills.fromJson(json["gainSkills"]),
    killers: json["killers"] == null ? null : List<PurpleKiller>.from(json["killers"].map((x) => PurpleKiller.fromJson(x))),
    lbFill: json["lbFill"] == null ? null : LbFill.fromJson(json["lbFill"]),
    resist: json["resist"] == null ? null : List<Resist>.from(json["resist"].map((x) => Resist.fromJson(x))),
    healOverTurn: json["healOverTurn"] == null ? null : HealOverTurn.fromJson(json["healOverTurn"]),
    physicalMitigation: json["physicalMitigation"] == null ? null : json["physicalMitigation"],
    magicalMitigation: json["magicalMitigation"] == null ? null : json["magicalMitigation"],
    globalMitigation: json["globalMitigation"] == null ? null : json["globalMitigation"],
    skillEnhancement: json["skillEnhancement"] == null ? null : Map.from(json["skillEnhancement"]).map((k, v) => MapEntry<String, int>(k, v)),
    turn: json["turn"] == null ? null : json["turn"],
    imbue: json["imbue"] == null ? null : List<NameElement>.from(json["imbue"].map((x) => nameElementValues.map[x])),
  );

  Map<String, dynamic> toJson() => {
    "damage": damage == null ? null : damage.toJson(),
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : targetValues.reverse[target],
    "heal": heal == null ? null : heal.toJson(),
    "statsBuff": statsBuff == null ? null : statsBuff.toJson(),
    "turns": turns == null ? null : turns,
    "break": effectBreak == null ? null : effectBreak.toJson(),
    "imperil": imperil == null ? null : imperil.toJson(),
    "noUse": noUse == null ? null : noUse,
    "randomlyUse": randomlyUse == null ? null : List<dynamic>.from(randomlyUse.map((x) => x.toJson())),
    "gainSkills": gainSkills == null ? null : gainSkills.toJson(),
    "killers": killers == null ? null : List<dynamic>.from(killers.map((x) => x.toJson())),
    "lbFill": lbFill == null ? null : lbFill.toJson(),
    "resist": resist == null ? null : List<dynamic>.from(resist.map((x) => x.toJson())),
    "healOverTurn": healOverTurn == null ? null : healOverTurn.toJson(),
    "physicalMitigation": physicalMitigation == null ? null : physicalMitigation,
    "magicalMitigation": magicalMitigation == null ? null : magicalMitigation,
    "globalMitigation": globalMitigation == null ? null : globalMitigation,
    "skillEnhancement": skillEnhancement == null ? null : Map.from(skillEnhancement).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "turn": turn == null ? null : turn,
    "imbue": imbue == null ? null : List<dynamic>.from(imbue.map((x) => nameElementValues.reverse[x])),
  };
}

class IndecentDamage {
  CounterTypeEnum mecanism;
  DamageType damageType;
  double coef;
  PurpleIgnore ignore;
  List<NameElement> elements;
  Use use;
  double stack;
  int maxStack;

  IndecentDamage({
    this.mecanism,
    this.damageType,
    this.coef,
    this.ignore,
    this.elements,
    this.use,
    this.stack,
    this.maxStack,
  });

  factory IndecentDamage.fromJson(Map<String, dynamic> json) => IndecentDamage(
    mecanism: json["mecanism"] == null ? null : counterTypeEnumValues.map[json["mecanism"]],
    damageType: json["damageType"] == null ? null : damageTypeValues.map[json["damageType"]],
    coef: json["coef"] == null ? null : json["coef"].toDouble(),
    ignore: json["ignore"] == null ? null : PurpleIgnore.fromJson(json["ignore"]),
    elements: json["elements"] == null ? null : List<NameElement>.from(json["elements"].map((x) => nameElementValues.map[x])),
    use: json["use"] == null ? null : Use.fromJson(json["use"]),
    stack: json["stack"] == null ? null : json["stack"].toDouble(),
    maxStack: json["maxStack"] == null ? null : json["maxStack"],
  );

  Map<String, dynamic> toJson() => {
    "mecanism": mecanism == null ? null : counterTypeEnumValues.reverse[mecanism],
    "damageType": damageType == null ? null : damageTypeValues.reverse[damageType],
    "coef": coef == null ? null : coef,
    "ignore": ignore == null ? null : ignore.toJson(),
    "elements": elements == null ? null : List<dynamic>.from(elements.map((x) => nameElementValues.reverse[x])),
    "use": use == null ? null : use.toJson(),
    "stack": stack == null ? null : stack,
    "maxStack": maxStack == null ? null : maxStack,
  };
}

class StickyRandomlyUse {
  IndigoSkill skill;
  int percent;

  StickyRandomlyUse({
    this.skill,
    this.percent,
  });

  factory StickyRandomlyUse.fromJson(Map<String, dynamic> json) => StickyRandomlyUse(
    skill: json["skill"] == null ? null : IndigoSkill.fromJson(json["skill"]),
    percent: json["percent"] == null ? null : json["percent"],
  );

  Map<String, dynamic> toJson() => {
    "skill": skill == null ? null : skill.toJson(),
    "percent": percent == null ? null : percent,
  };
}

class IndigoSkill {
  int id;
  String name;
  FluffyIcon icon;
  List<Effect3> effects;
  SkillType type;
  List<int> frames;
  CounterTypeEnum move;

  IndigoSkill({
    this.id,
    this.name,
    this.icon,
    this.effects,
    this.type,
    this.frames,
    this.move,
  });

  factory IndigoSkill.fromJson(Map<String, dynamic> json) => IndigoSkill(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : fluffyIconValues.map[json["icon"]],
    effects: json["effects"] == null ? null : List<Effect3>.from(json["effects"].map((x) => Effect3.fromJson(x))),
    type: json["type"] == null ? null : skillTypeValues.map[json["type"]],
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x)),
    move: json["move"] == null ? null : counterTypeEnumValues.map[json["move"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : fluffyIconValues.reverse[icon],
    "effects": effects == null ? null : List<dynamic>.from(effects.map((x) => x.toJson())),
    "type": type == null ? null : skillTypeValues.reverse[type],
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x)),
    "move": move == null ? null : counterTypeEnumValues.reverse[move],
  };
}

class Effect3 {
  Effect4 effect;
  String desc;

  Effect3({
    this.effect,
    this.desc,
  });

  factory Effect3.fromJson(Map<String, dynamic> json) => Effect3(
    effect: json["effect"] == null ? null : Effect4.fromJson(json["effect"]),
    desc: json["desc"] == null ? null : json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "effect": effect == null ? null : effect.toJson(),
    "desc": desc == null ? null : desc,
  };
}

class Effect4 {
  PurpleImperil imperil;
  int turns;
  Area area;
  Target target;
  List<Resist> resist;
  FluffyDamage damage;
  bool noUse;
  Heal heal;

  Effect4({
    this.imperil,
    this.turns,
    this.area,
    this.target,
    this.resist,
    this.damage,
    this.noUse,
    this.heal,
  });

  factory Effect4.fromJson(Map<String, dynamic> json) => Effect4(
    imperil: json["imperil"] == null ? null : PurpleImperil.fromJson(json["imperil"]),
    turns: json["turns"] == null ? null : json["turns"],
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
    resist: json["resist"] == null ? null : List<Resist>.from(json["resist"].map((x) => Resist.fromJson(x))),
    damage: json["damage"] == null ? null : FluffyDamage.fromJson(json["damage"]),
    noUse: json["noUse"] == null ? null : json["noUse"],
    heal: json["heal"] == null ? null : Heal.fromJson(json["heal"]),
  );

  Map<String, dynamic> toJson() => {
    "imperil": imperil == null ? null : imperil.toJson(),
    "turns": turns == null ? null : turns,
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : targetValues.reverse[target],
    "resist": resist == null ? null : List<dynamic>.from(resist.map((x) => x.toJson())),
    "damage": damage == null ? null : damage.toJson(),
    "noUse": noUse == null ? null : noUse,
    "heal": heal == null ? null : heal.toJson(),
  };
}

enum FluffyIcon { ABILITY_39_PNG, ABILITY_68_PNG, ABILITY_22_PNG, ABILITY_4_PNG, ABILITY_100_PNG }

final fluffyIconValues = EnumValues({
  "ability_100.png": FluffyIcon.ABILITY_100_PNG,
  "ability_22.png": FluffyIcon.ABILITY_22_PNG,
  "ability_39.png": FluffyIcon.ABILITY_39_PNG,
  "ability_4.png": FluffyIcon.ABILITY_4_PNG,
  "ability_68.png": FluffyIcon.ABILITY_68_PNG
});

class MaxStats {
  int hp;
  int mp;
  int atk;
  int def;
  int mag;
  int spr;
  int accuracy;

  MaxStats({
    this.hp,
    this.mp,
    this.atk,
    this.def,
    this.mag,
    this.spr,
    this.accuracy,
  });

  factory MaxStats.fromJson(Map<String, dynamic> json) => MaxStats(
    hp: json["hp"] == null ? null : json["hp"],
    mp: json["mp"] == null ? null : json["mp"],
    atk: json["atk"] == null ? null : json["atk"],
    def: json["def"] == null ? null : json["def"],
    mag: json["mag"] == null ? null : json["mag"],
    spr: json["spr"] == null ? null : json["spr"],
    accuracy: json["accuracy"] == null ? null : json["accuracy"],
  );

  Map<String, dynamic> toJson() => {
    "hp": hp == null ? null : hp,
    "mp": mp == null ? null : mp,
    "atk": atk == null ? null : atk,
    "def": def == null ? null : def,
    "mag": mag == null ? null : mag,
    "spr": spr == null ? null : spr,
    "accuracy": accuracy == null ? null : accuracy,
  };
}

class TentacledGainSkills {
  List<MulticastSkill> skills;

  TentacledGainSkills({
    this.skills,
  });

  factory TentacledGainSkills.fromJson(Map<String, dynamic> json) => TentacledGainSkills(
    skills: json["skills"] == null ? null : List<MulticastSkill>.from(json["skills"].map((x) => MulticastSkill.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "skills": skills == null ? null : List<dynamic>.from(skills.map((x) => x.toJson())),
  };
}

class ReplaceLb {
  String name;
  List<ReplaceLbMaxEffect> minEffects;
  List<ReplaceLbMaxEffect> maxEffects;
  List<int> frames;
  CooldownSkillMove move;
  ChainFamily chainFamily;

  ReplaceLb({
    this.name,
    this.minEffects,
    this.maxEffects,
    this.frames,
    this.move,
    this.chainFamily,
  });

  factory ReplaceLb.fromJson(Map<String, dynamic> json) => ReplaceLb(
    name: json["name"] == null ? null : json["name"],
    minEffects: json["minEffects"] == null ? null : List<ReplaceLbMaxEffect>.from(json["minEffects"].map((x) => ReplaceLbMaxEffect.fromJson(x))),
    maxEffects: json["maxEffects"] == null ? null : List<ReplaceLbMaxEffect>.from(json["maxEffects"].map((x) => ReplaceLbMaxEffect.fromJson(x))),
    frames: json["frames"] == null ? null : List<int>.from(json["frames"].map((x) => x)),
    move: json["move"] == null ? null : cooldownSkillMoveValues.map[json["move"]],
    chainFamily: json["chainFamily"] == null ? null : chainFamilyValues.map[json["chainFamily"]],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "minEffects": minEffects == null ? null : List<dynamic>.from(minEffects.map((x) => x.toJson())),
    "maxEffects": maxEffects == null ? null : List<dynamic>.from(maxEffects.map((x) => x.toJson())),
    "frames": frames == null ? null : List<dynamic>.from(frames.map((x) => x)),
    "move": move == null ? null : cooldownSkillMoveValues.reverse[move],
    "chainFamily": chainFamily == null ? null : chainFamilyValues.reverse[chainFamily],
  };
}

class ReplaceLbMaxEffect {
  Effect5 effect;
  String desc;

  ReplaceLbMaxEffect({
    this.effect,
    this.desc,
  });

  factory ReplaceLbMaxEffect.fromJson(Map<String, dynamic> json) => ReplaceLbMaxEffect(
    effect: json["effect"] == null ? null : Effect5.fromJson(json["effect"]),
    desc: json["desc"] == null ? null : json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "effect": effect == null ? null : effect.toJson(),
    "desc": desc == null ? null : desc,
  };
}

class Effect5 {
  IndecentDamage damage;
  Area area;
  Target target;
  Break effectBreak;
  int turns;
  bool noUse;
  PurpleImperil imperil;
  PurpleGainSkills gainSkills;
  Map<String, double> skillEnhancement;
  int turn;
  int globalMitigation;
  List<TentacledKiller> killers;
  Break statsBuff;
  HealOverTurn healOverTurn;
  Heal heal;
  int drawAttacks;
  int physicalMitigation;

  Effect5({
    this.damage,
    this.area,
    this.target,
    this.effectBreak,
    this.turns,
    this.noUse,
    this.imperil,
    this.gainSkills,
    this.skillEnhancement,
    this.turn,
    this.globalMitigation,
    this.killers,
    this.statsBuff,
    this.healOverTurn,
    this.heal,
    this.drawAttacks,
    this.physicalMitigation,
  });

  factory Effect5.fromJson(Map<String, dynamic> json) => Effect5(
    damage: json["damage"] == null ? null : IndecentDamage.fromJson(json["damage"]),
    area: json["area"] == null ? null : areaValues.map[json["area"]],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
    effectBreak: json["break"] == null ? null : Break.fromJson(json["break"]),
    turns: json["turns"] == null ? null : json["turns"],
    noUse: json["noUse"] == null ? null : json["noUse"],
    imperil: json["imperil"] == null ? null : PurpleImperil.fromJson(json["imperil"]),
    gainSkills: json["gainSkills"] == null ? null : PurpleGainSkills.fromJson(json["gainSkills"]),
    skillEnhancement: json["skillEnhancement"] == null ? null : Map.from(json["skillEnhancement"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
    turn: json["turn"] == null ? null : json["turn"],
    globalMitigation: json["globalMitigation"] == null ? null : json["globalMitigation"],
    killers: json["killers"] == null ? null : List<TentacledKiller>.from(json["killers"].map((x) => TentacledKiller.fromJson(x))),
    statsBuff: json["statsBuff"] == null ? null : Break.fromJson(json["statsBuff"]),
    healOverTurn: json["healOverTurn"] == null ? null : HealOverTurn.fromJson(json["healOverTurn"]),
    heal: json["heal"] == null ? null : Heal.fromJson(json["heal"]),
    drawAttacks: json["drawAttacks"] == null ? null : json["drawAttacks"],
    physicalMitigation: json["physicalMitigation"] == null ? null : json["physicalMitigation"],
  );

  Map<String, dynamic> toJson() => {
    "damage": damage == null ? null : damage.toJson(),
    "area": area == null ? null : areaValues.reverse[area],
    "target": target == null ? null : targetValues.reverse[target],
    "break": effectBreak == null ? null : effectBreak.toJson(),
    "turns": turns == null ? null : turns,
    "noUse": noUse == null ? null : noUse,
    "imperil": imperil == null ? null : imperil.toJson(),
    "gainSkills": gainSkills == null ? null : gainSkills.toJson(),
    "skillEnhancement": skillEnhancement == null ? null : Map.from(skillEnhancement).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "turn": turn == null ? null : turn,
    "globalMitigation": globalMitigation == null ? null : globalMitigation,
    "killers": killers == null ? null : List<dynamic>.from(killers.map((x) => x.toJson())),
    "statsBuff": statsBuff == null ? null : statsBuff.toJson(),
    "healOverTurn": healOverTurn == null ? null : healOverTurn.toJson(),
    "heal": heal == null ? null : heal.toJson(),
    "drawAttacks": drawAttacks == null ? null : drawAttacks,
    "physicalMitigation": physicalMitigation == null ? null : physicalMitigation,
  };
}

class TentacledKiller {
  RaceEnum name;
  int physical;

  TentacledKiller({
    this.name,
    this.physical,
  });

  factory TentacledKiller.fromJson(Map<String, dynamic> json) => TentacledKiller(
    name: json["name"] == null ? null : raceEnumValues.map[json["name"]],
    physical: json["physical"] == null ? null : json["physical"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : raceEnumValues.reverse[name],
    "physical": physical == null ? null : physical,
  };
}

enum Special { DUAL_WIELD }

final specialValues = EnumValues({
  "dualWield": Special.DUAL_WIELD
});

class StCover {
  int chance;
  LbFill mitigation;
  Sex exclusiveSex;

  StCover({
    this.chance,
    this.mitigation,
    this.exclusiveSex,
  });

  factory StCover.fromJson(Map<String, dynamic> json) => StCover(
    chance: json["chance"] == null ? null : json["chance"],
    mitigation: json["mitigation"] == null ? null : LbFill.fromJson(json["mitigation"]),
    exclusiveSex: json["exclusiveSex"] == null ? null : sexValues.map[json["exclusiveSex"]],
  );

  Map<String, dynamic> toJson() => {
    "chance": chance == null ? null : chance,
    "mitigation": mitigation == null ? null : mitigation.toJson(),
    "exclusiveSex": exclusiveSex == null ? null : sexValues.reverse[exclusiveSex],
  };
}

enum Sex { FEMALE, MALE, OTHER }

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
