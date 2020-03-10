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
    if (currentUnit.name == null) {
      return Container(
        child: Text('No unit selected'),
      );
    } else {
      return Container(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Image.asset('assets/images/units/unit_icon_${currentUnit.id}.png'),
            title: Text(currentUnit.name),
            subtitle: Text('${currentUnit.minRarity}☆ - ${currentUnit.maxRarity}☆'),
            trailing: IconButton(icon: Icon(Icons.close), onPressed: () {
              showDialog(context: context,
              builder: (BuildContext context) {
                return Center(
                  child: AlertDialog(
                    title: Text('Are you sure you want to close this build?'),
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        FlatButton(
                          child: Text('Cancel'),
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          color: Colors.green,
                        ),
                        FlatButton(
                          child: Text('Okay'),
                          onPressed: (){
                            currentUnit = null;
                            notifyParent();
                            Navigator.of(context).pop();
                          },
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                );
              });
//              currentUnit = null;
              notifyParent();
            },),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(3.0), child: Text('HP: ${currentUnit.stats.maxStats.hp}')),
              Padding(padding: EdgeInsets.all(3.0), child: Text('MP: ${currentUnit.stats.maxStats.mp}'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(3.0), child: Text('ATK: ${currentUnit.stats.maxStats.atk}')),
              Padding(padding: EdgeInsets.all(3.0), child: Text('DEF: ${currentUnit.stats.maxStats.def}'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(3.0), child: Text('MAG: ${currentUnit.stats.maxStats.mag}')),
              Padding(padding: EdgeInsets.all(3.0), child: Text('SPR: ${currentUnit.stats.maxStats.spr}'))
            ],
          ),
        ],
      ));
    }
  }
}
