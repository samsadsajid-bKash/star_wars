import 'package:flutter/material.dart';

class HomePage extends MaterialPageRoute<Null> {
  HomePage(): super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 1.0,
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  });
}


class StarWarsPage extends MaterialPageRoute<Null> {
  StarWarsPage(): super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 1.0,
      ),
      body: Center(
        child: Text("Star Wars"),
      ),
    );
  });
}