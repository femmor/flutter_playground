import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/first_screen.dart';
import 'package:flutter_playground/screens/second_screen.dart';
import 'package:flutter_playground/screens/third_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: "First"),
              Tab(text: "Second"),
              Tab(text: "Third"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
            ThirdScreen(),
          ],
        ),
      ),
    );
  }
}
