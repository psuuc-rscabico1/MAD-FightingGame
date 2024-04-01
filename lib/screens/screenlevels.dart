import 'package:flutter/material.dart';
import 'package:midterm_project/gamedata/character/enemiesz.dart';
import 'package:midterm_project/screens/piliangmapa.dart';
import 'package:midterm_project/screens/startgame.dart';

class LevelScreenz extends StatefulWidget {
  const LevelScreenz({Key? key}) : super(key: key);

  @override
  State<LevelScreenz> createState() => _LevelScreenzState();
}

class _LevelScreenzState extends State<LevelScreenz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 1, 44), // Make app bar transparent
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white, // Set icon color to white
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StartGame()),
            );
          },
        ),
        title: Text(
          "Pumili ng Kakalabanin",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0, // Remove app bar elevation
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/select-rival.png'), // Your background image path
                  fit: BoxFit.cover,
                ),
              ),
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 1,
                children: [
                  SizedBox(height: 40),
                  Enemies4(),
                  SizedBox(height: 40),
                  Enemies6(),
                  SizedBox(height: 40),
                  Enemies7(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              color: Color.fromARGB(255, 38, 127, 41),
            ),
          ),
        ],
      ),
    );
  }
}
