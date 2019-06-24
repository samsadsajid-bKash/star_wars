import 'package:flutter/material.dart';
import 'Routes.dart';


class SimpleWidgetState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
          onTap: () {
            debugPrint("wuqdhasndjk");
            Navigator.push(context, HomePage());
          },
          child: Text("Coming soon"),
        )
    );
  }
}