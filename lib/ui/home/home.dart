import 'package:ffbeequip/data/equipment_types.dart';
import 'package:ffbeequip/data/units.dart';
import 'package:ffbeequip/ui/home/item_search.dart';
import 'package:ffbeequip/ui/widgets/equipment.dart';
import 'package:ffbeequip/ui/widgets/searchbar.dart';
import 'package:ffbeequip/ui/widgets/unitdisplay.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List<Units> units = List();
Units selectedUnit = Units();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: UnitCalculator(),
      ),
    );
  }
}

class UnitCalculator extends StatefulWidget {
  @override
  _UnitCalculatorState createState() => _UnitCalculatorState();
}

class _UnitCalculatorState extends State<UnitCalculator> {
  @override
  void initState() {
    super.initState();

    loadUnits();
  }

  loadUnits() async {
    final unitsJsonString =
        await rootBundle.loadString('assets/data/units.json');
    units = unitsFromJson(unitsJsonString).values.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(13.0),
          child: Center(
              child: SearchBar(
            notifyParent: updateState,
          )),
        ),
        UnitDisplay(),
        weaponRow,
        armorRow,
        accessoriesRow,
        materiaRow1,
        materiaRow2
      ],
    );
  }

  // Forces the selected unit to appear in the unit display
  updateState() {
    setState(() {});
  }

  // Layout of the weapons row
  Widget weaponRow = Row(
    children: <Widget>[
      Flexible(
        child:
            Equipment(itemType: EquipmentTypes.Weapon, slotName: 'Right Hand'),
      ),
      Flexible(
        child:
            Equipment(itemType: EquipmentTypes.Weapon, slotName: 'Left Hand'),
      )
    ],
  );

  // Layout of the armor row
  Widget armorRow = Row(
    children: <Widget>[
      Flexible(
        child: Equipment(itemType: EquipmentTypes.Head, slotName: 'Head'),
      ),
      Flexible(
        child: Equipment(itemType: EquipmentTypes.Body, slotName: 'Body'),
      ),
    ],
  );

  // Layout of the accessories row
  Widget accessoriesRow = Row(
    children: <Widget>[
      Flexible(
        child: Equipment(
            itemType: EquipmentTypes.Accessory, slotName: 'Accessory 1'),
      ),
      Flexible(
          child: Equipment(
              itemType: EquipmentTypes.Accessory, slotName: 'Accessory 2')),
    ],
  );

  // Layout of materia row 1 (slots 1 and 2)
  Widget materiaRow1 = Row(
    children: <Widget>[
      Flexible(
        child:
            Equipment(itemType: EquipmentTypes.Materia, slotName: 'Materia 1'),
      ),
      Flexible(
          child: Equipment(
              itemType: EquipmentTypes.Materia, slotName: 'Materia 2')),
    ],
  );

  // Layout of materia row 2 (slots 3 and 4)
  Widget materiaRow2 = Row(
    children: <Widget>[
      Flexible(
        child:
            Equipment(itemType: EquipmentTypes.Materia, slotName: 'Materia 3'),
      ),
      Flexible(
          child: Equipment(
              itemType: EquipmentTypes.Materia, slotName: 'Materia 4')),
    ],
  );
}
