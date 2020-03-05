import 'package:ffbeequip/data/units.dart';
import 'package:ffbeequip/ui/home/home.dart';
import 'package:flutter/material.dart';

class UnitDisplay extends StatefulWidget {
  UnitDisplay({Key key}) : super(key: key);

  @override
  _UnitDisplayState createState() => _UnitDisplayState();
}

class _UnitDisplayState extends State<UnitDisplay> {
  _UnitDisplayState();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (selectedUnit.name == null) {
      return Container(
        child: Text('No unit selected'),
      );
    } else {
      return Container(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
              '${selectedUnit.name} ${selectedUnit.minRarity} - ${selectedUnit.maxRarity}'),
          Text('HP: ${selectedUnit.stats.maxStats.hp}'),
          Text('MP: ${selectedUnit.stats.maxStats.mp}'),
          Text('ATK: ${selectedUnit.stats.maxStats.atk}'),
          Text('DEF: ${selectedUnit.stats.maxStats.def}'),
          Text('MAG: ${selectedUnit.stats.maxStats.mag}'),
          Text('SPR: ${selectedUnit.stats.maxStats.spr}'),
        ],
      ));
    }
  }
}
