import 'package:ffbeequip/data/units.dart';
import 'package:ffbeequip/ui/home/home.dart';
import 'package:flutter/material.dart';

class UnitDisplay extends StatefulWidget {
  UnitDisplay({Key key, this.notifyParent}) : super(key: key);

  final Function notifyParent;

  @override
  _UnitDisplayState createState() => _UnitDisplayState(notifyParent);
}

class _UnitDisplayState extends State<UnitDisplay> {
  _UnitDisplayState(this.notifyParent);

  final Function notifyParent;

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
          ListTile(
            leading: Image.asset('assets/images/units/unit_icon_${selectedUnit.id}.png'),
            title: Text(selectedUnit.name),
            subtitle: Text('${selectedUnit.minRarity}☆ - ${selectedUnit.maxRarity}☆'),
            trailing: IconButton(icon: Icon(Icons.close), onPressed: (){
              selectedUnit = null;
              notifyParent();
            },),
          ),
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
