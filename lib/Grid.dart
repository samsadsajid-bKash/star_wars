import 'package:flutter/material.dart';
import 'Routes.dart';

//class TheGridViewWidget extends StatelessWidget {
//  @override
//  TheGridViewWidgetState createState() => TheGridViewWidgetState();
//}

class TheGridViewWidgetState extends StatelessWidget {
  Card makeGridCell(String name, IconData icon) {
    return Card(
        elevation: 6.0,
        child: InkWell(
          onTap: () {
            if(name == "Home") {
              debugPrint("aduhwue");
              Navigator.push(context, HomePage());
            } else if(name == "Star Wars"){
              debugPrint("yo");
              Navigator.push(context, StarWarsPage());
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Center(child: Icon(icon)),
              Center(child: Text(name)),
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
      return GridView.count(
          primary: true,
          padding: EdgeInsets.all(20.0),
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
          children: <Widget>[
            makeGridCell("Home", Icons.home),
            makeGridCell("Star Wars", Icons.star),
            makeGridCell("Chat", Icons.chat_bubble),
            makeGridCell("News", Icons.new_releases),
            makeGridCell("Network", Icons.network_wifi),
            makeGridCell("Options", Icons.settings),
          ]);
    }
}
