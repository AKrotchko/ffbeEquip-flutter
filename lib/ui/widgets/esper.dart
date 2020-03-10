import 'package:flutter/material.dart';

class Esper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.all(Radius.circular(3.0))),
        child: Material(
          child: InkWell(
            onTap: () {},
            child: ListTile(
              leading: Opacity(
                  opacity: 0.5,
                  child: Image.asset('assets/images/icons/slots/esper.png')),
              title: Text('Esper'),
            ),
          ),
        ));
  }
}
