import 'package:flutter/material.dart';
import 'package:midterm_project/gamedata/mapa/mapa2.dart';
import 'package:midterm_project/screens/screenlevels.dart';
import 'package:midterm_project/screens/startgame.dart';

class MgaMapaz extends StatefulWidget {
  const MgaMapaz({Key? key}) : super(key: key);

  @override
  State<MgaMapaz> createState() => _MgaMapazState();
}

class _MgaMapazState extends State<MgaMapaz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 36, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white, 
          onPressed: () {
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LevelScreenz()),
            );
 
          },
        ),
        title: Text(
          "Pumili ng Mapa",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0, 
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/select-map.png'), 
                  fit: BoxFit.cover,
                ),
              ),
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 1,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Rice1(),
                  SizedBox(
                    height: 5,
                  ),
                  Boracay(),
                  SizedBox(
                    height: 5,
                  ),
                  Mayon(),
                  SizedBox(
                    height: 5,
                  ),
                  Wind(),
                  SizedBox(
                    height: 5,
                  ),
                  Intramuros(),
                  SizedBox(
                    height: 5,
                  ),
                  Rizal(),
                  SizedBox(
                    height: 5,
                  ),
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
