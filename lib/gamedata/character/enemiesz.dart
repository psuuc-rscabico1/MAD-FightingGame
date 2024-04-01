import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:midterm_project/gamedata/profile/profileacc.dart';
import 'package:midterm_project/screens/piliangmapa3.dart';
import 'package:midterm_project/unused/arena.dart';
import 'package:midterm_project/screens/piliangmapa.dart';
import 'package:midterm_project/screens/piliangmapa2.dart';

class Enemies4 extends StatelessWidget {
  const Enemies4({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => MgaMapaz()),
          (route) => false,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridTile(
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/characterback.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: Image.asset(enemyimage[3]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Vince',style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Enemies6 extends StatelessWidget {
  const Enemies6({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => MgaMapaz2()),
          (route) => false,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridTile(
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/characterback.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: Image.asset(enemyimage[5]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Christian',style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Enemies7 extends StatelessWidget {
  const Enemies7({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => MgaMapaz3()),
          (route) => false,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridTile(
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/characterback.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: Image.asset(enemyimage[6]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Jerico',style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


