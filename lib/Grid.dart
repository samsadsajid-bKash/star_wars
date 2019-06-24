import 'package:flutter/material.dart';
import 'GridCell.dart';


class GridViewWidgetState extends StatelessWidget {

  List<Widget> grids = [];

  GridViewWidgetState(this.grids);

  @override
  Widget build(BuildContext context) {

    return GridView.count(
          primary: true,
          padding: EdgeInsets.all(20.0),
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
          children: grids
    );
  }
}