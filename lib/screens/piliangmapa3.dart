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

class MgaMapaz3 extends StatefulWidget {
  const MgaMapaz3({Key? key}) : super(key: key);

  @override
  State<MgaMapaz3> createState() => _MgaMapaz3State();
}

class _MgaMapaz3State extends State<MgaMapaz3> {
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
                  Rice3(),
                  SizedBox(
                    height: 5,
                  ),
                  Boracay3(),
                  SizedBox(
                    height: 5,
                  ),
                  Mayon3(),
                  SizedBox(
                    height: 5,
                  ),
                  Wind3(),
                  SizedBox(
                    height: 5,
                  ),
                  Intramuros3(),
                  SizedBox(
                    height: 5,
                  ),
                  Rizal3(),
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
