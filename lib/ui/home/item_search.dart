import 'package:ffbeequip/data/units.dart';
import 'package:flutter/material.dart';

class ItemSearch extends StatefulWidget {
  ItemSearch({Key key, @required this.itemType}) : super(key: key);

  final itemType;

  @override
  _ItemSearchState createState() => _ItemSearchState(itemType);
}

class _ItemSearchState extends State<ItemSearch> {
  final itemType;

  _ItemSearchState(this.itemType); // Constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Search for your $itemType'),
      ),
    );
  }
}
