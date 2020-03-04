import 'package:ffbeequip/data/units.dart';
import 'package:ffbeequip/ui/widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List<Units> units = List();

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: UnitCalculator(),
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
    final unitsJsonString = await rootBundle.loadString('assets/data/units.json');
    units = unitsFromJson(unitsJsonString).values.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SearchBar(),
    );
  }
}

