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
    for (int i = 0; i < units.length; i++) {
      if (units[i].name.toLowerCase().contains(pattern.toLowerCase())) {
        suggestions.add(units[i]);
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

getUnitFromSuggestion(unitName) {
  for (int i = 0; i < units.length; i++) {
    if (units[i].name == unitName) {
      return units[i];
    }
  }
}
