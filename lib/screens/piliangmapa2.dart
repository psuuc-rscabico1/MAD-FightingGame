import 'package:flutter/material.dart';
import 'package:midterm_project/gamedata/mapa/mapa2.dart';
import 'package:midterm_project/mapscreen/boracay/boracaychristian.dart';
import 'package:midterm_project/mapscreen/intramuros/intramuroschris.dart';
import 'package:midterm_project/mapscreen/mayon/mayonchristian.dart';
import 'package:midterm_project/mapscreen/rizal/rizalchristian.dart';
import 'package:midterm_project/mapscreen/windmill/windnonoy.dart';
import 'package:midterm_project/mapscreen/windmill/windvince.dart';
import 'package:midterm_project/screens/screenlevels.dart';
import 'package:midterm_project/screens/startgame.dart';

class MgaMapaz2 extends StatefulWidget {
  const MgaMapaz2({Key? key}) : super(key: key);

  @override
  State<MgaMapaz2> createState() => _MgaMapaz2State();
}

class _MgaMapaz2State extends State<MgaMapaz2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 42, 36, 1), 
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white, // Set icon color to white
          onPressed: () {
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LevelScreenz()),
            );
 // Use Navigator.pop(context) to go back
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
                  Rice2(),
                  SizedBox(
                    height: 5,
                  ),
                  Boracay2(),
                  SizedBox(
                    height: 5,
                  ),
                  Mayon2(),
                  SizedBox(
                    height: 5,
                  ),
                  Wind2(),
                  SizedBox(
                    height: 5,
                  ),
                  Intramuros2(),
                  SizedBox(
                    height: 5,
                  ),
                  Rizal2(),
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
