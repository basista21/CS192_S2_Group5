import 'package:flutter/material.dart';
import 'package:super_planner/views/calendar.dart';
import 'package:super_planner/views/tasks.dart';
import '../views/home.dart';
import '../views/settings.dart';

List<Widget> _widgetDisplay = <Widget>[
  Home(),
  Calendar(),
  Tasks(),
  Settings(),
];

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}
class _DisplayState extends State<Display> {
  int currentTab = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetDisplay[currentTab],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff40a8c4),
        onTap: (int index) {
          setState(() {
            currentTab = index;
          });
        },
        currentIndex: currentTab,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 25.0,
            ),
            label: 'Home',
            backgroundColor: Color(0xff40a8c4),
          ),
          BottomNavigationBarItem(
            icon: Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.white,
                  size: 25.0,
            ),
            label: 'Calendar',
            backgroundColor: Color(0xff40a8c4),
          ),
          BottomNavigationBarItem(
            icon: Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                  size: 25.0,
            ),
            label: 'Tasks',
            backgroundColor: Color(0xff40a8c4),
          ),
          BottomNavigationBarItem(
            icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 25.0,
            ),
            label: 'Settings',
            backgroundColor: Color(0xff40a8c4),
          ),
        ],
      ),
    );
  }
}