import 'package:flutter/material.dart';
import 'Grid.dart';
import 'SimpleWidget.dart';


class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  TabBar makeTabBar() {
    return TabBar(tabs: <Tab>[
      Tab(
        icon: Icon(Icons.home),
      ),
      Tab(
        icon: Icon(Icons.settings_power),
      ),
    ], controller: tabController);
  }

  TabBarView makeTabBarView(tabs) {
    return TabBarView(
      children: tabs,
      controller: tabController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("bKash 2.0"),
          backgroundColor: Colors.blue,
          bottom: makeTabBar(),
        ),
        body: makeTabBarView(<Widget>[
          TheGridViewWidgetState(), SimpleWidget()
        ]),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

void main() => runApp(MyApp());

