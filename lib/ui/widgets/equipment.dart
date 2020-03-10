import 'package:ffbeequip/data/equipment_types.dart';
import 'package:ffbeequip/data/item.dart';
import 'package:ffbeequip/ui/home/home.dart';
import 'package:ffbeequip/ui/home/item_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Equipment extends StatefulWidget {
  Equipment(
      {Key key,
      @required this.itemType,
      @required this.slotName,
      this.selectedItem})
      : super(key: key);

  final EquipmentTypes itemType;
  final String slotName;
  final Item selectedItem;

  @override
  _EquipmentState createState() =>
      _EquipmentState(itemType, slotName, this.selectedItem);
}

class _EquipmentState extends State<Equipment> {
  _EquipmentState (this.itemType, this.slotName, this.selectedItem);

  final EquipmentTypes itemType;
  final String slotName;
  Item selectedItem;

  @override
  void initState () {
    super.initState();

    if (hats == null || hats.length == 0) {
      print('loading all of the items');
      loadItems();
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  unitEquippedState() {
    setState(() {
      switch (slotName) {
        case 'Right Hand': {
          selectedItem = currentlySelectedUnit.rightHand;
          break;
        }
        case 'Left Hand': {
          selectedItem = currentlySelectedUnit.leftHand;
          break;
        }
        case 'Head': {
          selectedItem = currentlySelectedUnit.head;
          break;
        }
        case 'Body': {
          selectedItem = currentlySelectedUnit.body;
          break;
        }
        case 'Accessory 1': {
          selectedItem = currentlySelectedUnit.accessory1;
          break;
        }
        case 'Accessory 2': {
          selectedItem = currentlySelectedUnit.accessory2;
          break;
        }
        case 'Materia 1': {
          selectedItem = currentlySelectedUnit.materia1;
          break;
        }
        case 'Materia 2': {
          selectedItem = currentlySelectedUnit.materia2;
          break;
        }
        case 'Materia 3': {
          selectedItem = currentlySelectedUnit.materia3;
          break;
        }
        case 'Materia 4': {
          selectedItem = currentlySelectedUnit.materia4;
          break;
        }
        default: break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(Radius.circular(3.0))),
      child: Center(
          child: Material(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ItemSearch(itemType: this.itemType, slotName: slotName, parentState: unitEquippedState)));
          },
          child: (selectedItem == null || selectedItem.name == null) ? ListTile(
            leading: Icon(Icons.call_to_action),
            title: Text(slotName),
          ) : ListTile(leading: Image.asset(
              'assets/images/items/${selectedItem.icon}'),
              title: Text(selectedItem.name)),
        ),
          )),
    );
  }

  loadItems () async {
    final allItemsJsonString = await rootBundle.loadString(
        'assets/data/data.json');
    items = itemFromJson(allItemsJsonString);

    for (var item in items) {
      switch (item.type) {
        case TypeElement.ACCESSORY: {
            accessories.add(item);
            break;
          }
        case TypeElement.DAGGER: {
            daggers.add(item);
            break;
          }
        case TypeElement.SWORD: {
            swords.add(item);
            break;
          }
        case TypeElement.GREAT_SWORD: {
          greatSwords.add(item);
          break;
        }
        case TypeElement.KATANA: {
          katanas.add(item);
          break;
        }
        case TypeElement.AXE: {
          axes.add(item);
          break;
        }
        case TypeElement.HAMMER: {
          hammers.add(item);
          break;
        }
        case TypeElement.MACE: {
          maces.add(item);
          break;
        }
        case TypeElement.SPEAR: {
          spears.add(item);
          break;
        }
        case TypeElement.FIST: {
          fists.add(item);
          break;
        }
        case TypeElement.ROD: {
          rods.add(item);
          break;
        }
        case TypeElement.STAFF: {
          staves.add(item);
          break;
        }
        case TypeElement.BOW: {
          bows.add(item);
          break;
        }
        case TypeElement.GUN: {
          guns.add(item);
          break;
        }
        case TypeElement.WHIP: {
          whips.add(item);
          break;
        }
        case TypeElement.THROWING: {
          thrown.add(item);
          break;
        }
        case TypeElement.HARP: {
          instruments.add(item);
          break;
        }
        case TypeElement.LIGHT_SHIELD: {
          lightShields.add(item);
          break;
        }
        case TypeElement.HEAVY_SHIELD: {
          heavyShields.add(item);
          break;
        }
        case TypeElement.HAT: {
            hats.add(item);
            break;
          }
        case TypeElement.HELM: {
            helms.add(item);
            break;
          }
        case TypeElement.CLOTHES: {
            clothes.add(item);
            break;
          }
        case TypeElement.ROBE: {
            robes.add(item);
            break;
          }
        case TypeElement.LIGHT_ARMOR: {
            lightArmors.add(item);
            break;
          }
        case TypeElement.HEAVY_ARMOR: {
            heavyArmors.add(item);
            break;
          }
        case TypeElement.MATERIA: {
            materia.add(item);
            break;
          }
        default:
          break;
      }
    }
  }
}
