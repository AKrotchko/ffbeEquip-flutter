import 'package:ffbeequip/data/unit.dart';
import 'package:ffbeequip/ui/home/home.dart';

getSuggestions(String pattern) async {
  // List of all suggestions
  var suggestions = List<dynamic>();

  // 7* only, starting with the text you entered
  var bestMatches = List<dynamic>();
  // 7* only, contains the text you entered
  var secondaryMatches = List<dynamic>();
  // cannot go to 7*, contains the text you entered
  var otherMatches = List<dynamic>();

  if (pattern != '' && pattern != null) {
    for (int i = 0; i < unitList.length; i++) {
      if (unitList[i].name.toLowerCase().contains(pattern.toLowerCase())) {
        suggestions.add(unitList[i]);
      }
    }
  }

  for (int i = 0; i < suggestions.length; i++) {
    // If the suggested unit starts with the words typed, and it is a 7* max unit
    if (suggestions[i]
            .name
            .toString()
            .toLowerCase()
            .startsWith(pattern.toLowerCase()) &&
        suggestions[i].maxRarity == '7') {
      bestMatches.add(suggestions[i]);
      // If the suggested unit does not start with the words typed, but it is a 7* max unit
    } else if (suggestions[i].maxRarity == '7') {
      secondaryMatches.add(suggestions[i]);
      // If the suggested unit is not a 7* max unit
    } else {
      otherMatches.add(suggestions[i]);
    }
  }

  suggestions.clear();
  suggestions.addAll(bestMatches);
  suggestions.addAll(secondaryMatches);
  suggestions.addAll(otherMatches);

  return suggestions;
}

getUnitFromSuggestion(unit) {
  for (int i = 0; i < unitList.length; i++) {
    if (unitList[i].name == unit.name) {
      getUnitPassives(unitList[i]);
      return unitList[i];
    }
  }
}

getUnitPassives(Unit unit) {
//  unit.passives.forEach((passive) => {
//    passive.effects.forEach((effect) => {
//      print(effect.hp);
//    })
//  });
int hpPassiveTotal = 0;
int mpPassiveTotal = 0;
int atkPassiveTotal = 0;
int defPassiveTotal = 0;
int magPassiveTotal = 0;
int sprPassiveTotal = 0;

for (int i = 0; i < unit.passives.length; i++) {
  for (int j = 0; j < unit.passives[i].effects.length; j++) {
//    print(unit.passives[i].effects[j].effect.hp);
//    hpPassiveTotal += getNonNull(unit.passives[i].effects[j].effect.hp);
//    mpPassiveTotal += getNonNull(unit.passives[i].effects[j].effect.mp);
//    atkPassiveTotal += getNonNull(unit.passives[i].effects[j].effect.atk);
//    defPassiveTotal += getNonNull(unit.passives[i].effects[j].effect.def);
//    magPassiveTotal += getNonNull(unit.passives[i].effects[j].effect.mag);
//    sprPassiveTotal += getNonNull(unit.passives[i].effects[j].effect.spr);

//  hpPassiveTotal += getPassiveHPStat(unit.passives[i].effects[j].effect, unit.passives[i].name);
//  mpPassiveTotal += getPassiveMPStat(unit.passives[i].effects[j].effect, unit.passives[i].name);
//  atkPassiveTotal += getPassiveAtkStat(unit.passives[i].effects[j].effect, unit.passives[i].name);
  getAllPassives(unit.passives[i].effects[j]);

//  if (unit.passives[i].effects[j].effect != null && unit.passives[i].effects[j].effect.equipedConditions != null) {
//    print(unit.passives[i].effects[j].effect?.equipedConditions);
//    print(unit.passives[i].effects[j].effect);
//  }
  }
}

print('Total HP percent: $hpPassiveTotal');
print('Total MP percent: $mpPassiveTotal');
print('Total ATK percent: $atkPassiveTotal');
print('Total DEF percent: $defPassiveTotal');
print('Total MAG percent: $magPassiveTotal');
print('Total SPR percent: $sprPassiveTotal');
}

getPassiveHPStat(BraggadociousEffect effect, name) {
  if (effect?.hp != null && effect?.equipedConditions == null) {
    print('[$name] Grants ${effect.hp}% HP Unconditionally');
    return effect.hp;
  } else if (effect?.hp != null && effect?.equipedConditions != null) {
    print('[$name] Grants ${effect.hp}% HP when equipped with ${effect?.equipedConditions}');
    return 0;
  } else {
    return 0;
  }
}

getPassiveMPStat(BraggadociousEffect effect, name) {
  if (effect?.mp != null && effect?.equipedConditions == null) {
    print('[$name] Grants ${effect.mp}% MP Unconditionally');
    return effect.mp;
  } else if (effect?.mp != null && effect?.equipedConditions != null) {
    print('[$name] Grants ${effect.mp}% MP when equipped with ${effect?.equipedConditions}');
    return 0;
  } else {
    return 0;
  }
}

getPassiveAtkStat(BraggadociousEffect effect, name) {
  if (effect?.atk != null && effect?.equipedConditions == null) {
    print('[$name] Grants ${effect.atk}% Atk Unconditionally');
    return effect.atk;
  } else if (effect?.atk != null && effect?.equipedConditions != null) {
    print('[$name] Grants ${effect.atk}% Atk when equipped with ${effect?.equipedConditions}');
    return 0;
  } else {
    return 0;
  }
}

getAllPassives(PassiveEffect effect) {
//  print(effect);
//  print(effect?.toJson());
//  print(effect.toString());
//print(effect.desc);
//print(effect?.effect?.toJson());
}
