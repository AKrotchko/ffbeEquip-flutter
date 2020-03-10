import 'package:ffbeequip/data/equipment_types.dart';
import 'package:ffbeequip/data/item.dart';
import 'package:ffbeequip/data/unit.dart';
import 'package:ffbeequip/ui/home/home.dart';
import 'package:flutter/material.dart';

// List of all items
List<Item> items = List();

// List of each weapon, by type
List<Item> daggers = List();
List<Item> swords = List();
List<Item> greatSwords = List();
List<Item> katanas = List();
List<Item> axes = List();
List<Item> hammers = List();
List<Item> maces = List();
List<Item> spears = List();
List<Item> fists = List();
List<Item> rods = List();
List<Item> staves = List();
List<Item> bows = List();
List<Item> guns = List();
List<Item> whips = List();
List<Item> thrown = List();
List<Item> instruments = List();
List<Item> lightShields = List();
List<Item> heavyShields = List();

// List of head slots
List<Item> hats = List();
List<Item> helms = List();

// List of body slots
List<Item> clothes = List();
List<Item> lightArmors = List();
List<Item> heavyArmors = List();
List<Item> robes = List();

// List of accessories/materia
List<Item> accessories = List();
List<Item> materia = List();

class ItemSearch extends StatefulWidget {
  ItemSearch({Key key, @required this.itemType, @required this.slotName, @required this.parentState}) : super(key: key);

  final itemType;
  final slotName;
  final parentState;

  @override
  _ItemSearchState createState() => _ItemSearchState(itemType, slotName, parentState);
}

class _ItemSearchState extends State<ItemSearch> {
  _ItemSearchState (this.itemType, this.slotName, this.parentState); // Constructor

  final itemType;
  final slotName;
  final parentState;
  List<dynamic> validEquips = List();

  @override
  void initState () {
    super.initState();

    setValidItems();
  }

  @override
  void dispose () {
    super.dispose();
  }

  @override
  Widget build (BuildContext context) {

    if (validEquips.length == 0) {
      return Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: Text('${currentUnit.name} cannot equip any ${itemType}s'),
            ),
          ),
        ),
      );
    }

    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return Divider(height: 1);
          }
          final index = i ~/ 2;

          return Material(
            child: InkWell(
              onTap: () {
                equipCurrentUnit(index);
                parentState();
                Navigator.of(context).pop();
              },
              child: ListTile(
                leading: Image.asset(
                    'assets/images/items/${validEquips[index].icon}'),
                title: Text(validEquips[index].name),
                subtitle: Text(
                  getValues(validEquips[index]),
//          subtitle: Text(validEquips[i].id),
                ),
              ),
            ),
          );
        },
        itemCount: (validEquips.length * 2),
      ),
        )
    );
  }

  setValidItems() {
    switch (itemType) {
      case EquipmentTypes.Weapon: {
        for (var equip in currentUnit.equip) {
          equip == Equip.DAGGER ? validEquips.addAll(daggers) : null;
          equip == Equip.SWORD ? validEquips.addAll(swords) : null;
          equip == Equip.GREAT_SWORD ? validEquips.addAll(greatSwords) : null;
          equip == Equip.KATANA ? validEquips.addAll(katanas) : null;
          equip == Equip.AXE ? validEquips.addAll(axes) : null;
          equip == Equip.HAMMER ? validEquips.addAll(hammers) : null;
          equip == Equip.MACE ? validEquips.addAll(maces) : null;
          equip == Equip.SPEAR ? validEquips.addAll(spears) : null;
          equip == Equip.FIST ? validEquips.addAll(fists) : null;
          equip == Equip.ROD ? validEquips.addAll(rods) : null;
          equip == Equip.STAFF ? validEquips.addAll(staves) : null;
          equip == Equip.BOW ? validEquips.addAll(bows) : null;
          equip == Equip.GUN ? validEquips.addAll(guns) : null;
          equip == Equip.WHIP ? validEquips.addAll(whips) : null;
          equip == Equip.THROWING ? validEquips.addAll(thrown) : null;
          equip == Equip.HARP ? validEquips.addAll(instruments) : null;
          equip == Equip.LIGHT_SHIELD ? validEquips.addAll(lightShields) : null;
          equip == Equip.HEAVY_SHIELD ? validEquips.addAll(heavyShields) : null;
        }
          break;
        }
      case EquipmentTypes.Head: {
          for (var equip in currentUnit.equip) {
            equip == Equip.HAT ? validEquips.addAll(hats) : null;
            equip == Equip.HELM ? validEquips.addAll(helms) : null;
          }
          break;
        }
      case EquipmentTypes.Body: {
          for (var equip in currentUnit.equip) {
            equip == Equip.CLOTHES ? validEquips.addAll(clothes) : null;
            equip == Equip.LIGHT_ARMOR ? validEquips.addAll(lightArmors) : null;
            equip == Equip.HEAVY_ARMOR ? validEquips.addAll(heavyArmors) : null;
            equip == Equip.ROBE ? validEquips.addAll(robes) : null;
          }
          break;
        }
      case EquipmentTypes.Accessory: {
          validEquips.addAll(accessories);
          break;
        }
      case EquipmentTypes.Materia: {
          validEquips.addAll(materia);
          break;
        }
    }
  }

  equipCurrentUnit(index) {
    switch (slotName) {
      case 'Right Hand': {
        currentlySelectedUnit.rightHand = validEquips[index];
        print('${currentUnit.name} has ${currentlySelectedUnit.rightHand.name} equipped');
        break;
      }
      case 'Left Hand': {
        currentlySelectedUnit.leftHand = validEquips[index];
        print('${currentUnit.name} has ${currentlySelectedUnit.leftHand.name} equipped');
        break;
      }
      case 'Head': {
        currentlySelectedUnit.head = validEquips[index];
        print('${currentUnit.name} has ${currentlySelectedUnit.head.name} equipped');
        break;
      }
      case 'Body': {
        currentlySelectedUnit.body = validEquips[index];
        print('${currentUnit.name} has ${currentlySelectedUnit.body.name} equipped');
        break;
      }
      case 'Accessory 1': {
        currentlySelectedUnit.accessory1 = validEquips[index];
        print('${currentUnit.name} has ${currentlySelectedUnit.accessory1.name} equipped');
        break;
      }
      case 'Accessory 2': {
        currentlySelectedUnit.accessory2 = validEquips[index];
        print('${currentUnit.name} has ${currentlySelectedUnit.accessory2
            .name} equipped');
        break;
      }
      case 'Materia 1':
        {
          currentlySelectedUnit.materia1 = validEquips[index];
          print('${currentUnit.name} has ${currentlySelectedUnit.materia1
              .name} equipped');
          break;
        }
      case 'Materia 2':
        {
          currentlySelectedUnit.materia2 = validEquips[index];
          print('${currentUnit.name} has ${currentlySelectedUnit.materia2
              .name} equipped');
          break;
        }
      case 'Materia 3':
        {
          currentlySelectedUnit.materia3 = validEquips[index];
          print('${currentUnit.name} has ${currentlySelectedUnit.materia3
              .name} equipped');
          break;
        }
      case 'Materia 4':
        {
          currentlySelectedUnit.materia4 = validEquips[index];
          print('${currentUnit.name} has ${currentlySelectedUnit.materia4
              .name} equipped');
          break;
        }
    }
  }

  getValues (Item item) {
    String importantValues = '';
//    getValue(item, 'name');
//    getValue(item, 'icon');
    importantValues += getValue(item, 'hp', 'HP');
    importantValues += getValue(item, 'hp%', 'HP', '%');
    importantValues += getValue(item, 'mp', 'MP');
    importantValues += getValue(item, 'mp%', 'MP', '%');
    importantValues += getValue(item, 'atk', 'ATK');
    importantValues += getValue(item, 'atk%', 'ATK', '%');
    importantValues += getValue(item, 'def', 'DEF');
    importantValues += getValue(item, 'def%', 'DEF', '%');
    importantValues += getValue(item, 'mag', 'MAG');
    importantValues += getValue(item, 'mag%', 'MAG', '%');
    importantValues += getValue(item, 'spr', 'SPR');
    importantValues += getValue(item, 'spr%', 'SPR', '%');


    return importantValues;
    return item.hp.toString();
  }

  getValue (Item item, valueName, otherName, [percentage]) {
    var value = (item.toJson()[valueName] == null) ? '' : '$otherName +${item
        .toJson()[valueName]}${percentage != null ? percentage : ''} ';

    return value;
  }

  getEleResist (Item item, valueName) {

  }
}
