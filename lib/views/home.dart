import 'package:flutter/material.dart';
import './login.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[200],
        title: Text(
          'SUPER PLANNER',
          style: TextStyle(
            fontSize: 30,
            letterSpacing: 2,
          )
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => Login()),
              );              // do something
            },
          )
        ],      
        centerTitle: false,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.cyan[200],
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.help,
                color: Colors.white,
              ),
            ],
          ),
        )
      ),
      // body: Home()
    );
  }
}
