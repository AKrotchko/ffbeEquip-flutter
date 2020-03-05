import 'package:ffbeequip/data/equipment_types.dart';
import 'package:ffbeequip/ui/home/item_search.dart';
import 'package:flutter/material.dart';

class Equipment extends StatefulWidget {
  Equipment({Key key, @required this.itemType, @required this.slotName})
      : super(key: key);

  final EquipmentTypes itemType;
  final String slotName;

  @override
  _EquipmentState createState() => _EquipmentState(itemType, slotName);
}

class _EquipmentState extends State<Equipment> {
  _EquipmentState(this.itemType, this.slotName);

  final EquipmentTypes itemType;
  final String slotName;

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
                    builder: (context) => ItemSearch(itemType: this.itemType)));
          },
          child: ListTile(
            leading: Icon(Icons.call_to_action),
            title: Text(slotName),
          ),
        ),
      )),
    );
  }
}
