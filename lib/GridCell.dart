import 'package:flutter/material.dart';
import 'Routes.dart';


class TheGridViewWidgetState extends StatelessWidget {
  final String cellName;
  final IconData iconData;

  TheGridViewWidgetState(this.cellName, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 6.0,
        child: InkWell(
          onTap: () {
            Navigator.push(context, HomePage());
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Center(child: Icon(iconData)),
              Center(child: Text(cellName)),
            ],
          ),
        )
    );
  }
}
