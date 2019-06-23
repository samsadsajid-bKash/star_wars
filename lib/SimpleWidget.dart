import 'package:flutter/material.dart';
import 'Routes.dart';


class SimpleWidget extends StatefulWidget {
  @override
  SimpleWidgetState createState() => SimpleWidgetState();
}

class SimpleWidgetState extends State<SimpleWidget> {
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