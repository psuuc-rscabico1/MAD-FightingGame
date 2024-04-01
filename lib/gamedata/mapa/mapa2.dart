import 'package:flutter/material.dart';
import 'package:midterm_project/gamedata/mapa/mapa.dart';
import 'package:midterm_project/gamedata/profile/profileacc.dart';
import 'package:midterm_project/mapscreen/Banaue/ricechristian.dart';
import 'package:midterm_project/mapscreen/Banaue/ricejerico.dart';
import 'package:midterm_project/mapscreen/Banaue/ricevince.dart';
import 'package:midterm_project/mapscreen/boracay/boracaychristian.dart';
import 'package:midterm_project/mapscreen/boracay/boracayjerico.dart';
import 'package:midterm_project/mapscreen/boracay/boracayvince.dart';
import 'package:midterm_project/mapscreen/intramuros/intramuroschris.dart';
import 'package:midterm_project/mapscreen/intramuros/intramurosjerico.dart';
import 'package:midterm_project/mapscreen/intramuros/intramurosvince.dart';
import 'package:midterm_project/mapscreen/mayon/mayonchristian.dart';
import 'package:midterm_project/mapscreen/mayon/mayonjerico.dart';
import 'package:midterm_project/mapscreen/mayon/mayonvince.dart';
import 'package:midterm_project/mapscreen/rizal/rizalchristian.dart';
import 'package:midterm_project/mapscreen/rizal/rizaljerico.dart';
import 'package:midterm_project/mapscreen/rizal/rizalvince.dart';
import 'package:midterm_project/mapscreen/windmill/windjerico.dart';
import 'package:midterm_project/mapscreen/windmill/windnonoy.dart';
import 'package:midterm_project/mapscreen/windmill/windvince.dart';
import 'package:midterm_project/screens/screenlevels.dart';
import 'package:midterm_project/unused/arena.dart';

class Windmill extends StatefulWidget {
  const Windmill({super.key});

  @override
  State<Windmill> createState() => _WindmillState();
}

class _WindmillState extends State<Windmill> {
  int mapzindex = 0;
 @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         mgamapa[0];
        Navigator.push(context, MaterialPageRoute(builder: (_) => LevelScreenz()));
        setState(() {
          
        });
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
                    child: Image.asset(mgamapa[0]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Bangui Windmill',style: TextStyle(color: Colors.white),),
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



class Wind2 extends StatelessWidget {
  const Wind2({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     
    onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => Windplay2()),
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
                    child: Image.asset(mgamapa[0]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Bangui Windmill',style: TextStyle(color: Colors.white),),
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

class Wind extends StatelessWidget {
  const Wind({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
   
    onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => Windplay()),
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
                    child: Image.asset(mgamapa[0]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Bangui Windmill',style: TextStyle(color: Colors.white),),
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

class Wind3 extends StatelessWidget {
  const Wind3({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
   
    onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => Windplay3()),
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
                    child: Image.asset(mgamapa[0]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Bangui Windmill',style: TextStyle(color: Colors.white),),
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




class Rizal extends StatelessWidget {
  const Rizal({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    
    onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => Rizal1()),
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
                    child: Image.asset(mgamapa[1]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Rizal Munomento',style: TextStyle(color: Colors.white),),
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


class Rizal2 extends StatelessWidget {
  const Rizal2({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => RizalPlay2()),
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
                    child: Image.asset(mgamapa[1]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Rizal Munomento',style: TextStyle(color: Colors.white),),
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

class Rizal3 extends StatelessWidget {
  const Rizal3({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => RizalPlay3()),
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
                    child: Image.asset(mgamapa[1]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Rizal Munomento',style: TextStyle(color: Colors.white),),
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

class Intramuros extends StatelessWidget {
  const Intramuros({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     
      onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => Intramuros1()),
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
                    child: Image.asset(mgamapa[2]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Intramuros',style: TextStyle(color: Colors.white),),
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


class Intramuros2 extends StatelessWidget {
  const Intramuros2({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
   onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => IntramurosPlay2()),
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
                    child: Image.asset(mgamapa[2]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Intramuros',style: TextStyle(color: Colors.white),),
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

class Intramuros3 extends StatelessWidget {
  const Intramuros3({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
   onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => IntramurosPlay3()),
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
                    child: Image.asset(mgamapa[2]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Intramuros',style: TextStyle(color: Colors.white),),
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




class Boracay extends StatefulWidget {
  const Boracay({Key? key});

  @override
  State<Boracay> createState() => _BoracayState();
}

class _BoracayState extends State<Boracay> {
  int value = 4; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BoracayPlay1(),
          ),
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
                    child: Image.asset(mgamapa[3]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Boracay',style: TextStyle(color: Colors.white),),
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

class Boracay2 extends StatefulWidget {
  const Boracay2({Key? key});

  @override
  State<Boracay2> createState() => _Boracay2State();
}

class _Boracay2State extends State<Boracay2> {
  int value = 4; // Assuming value is defined here

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BoracayPlay2(),
          ),
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
                    child: Image.asset(mgamapa[3]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Boracay',style: TextStyle(color: Colors.white),),
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


class Boracay3 extends StatefulWidget {
  const Boracay3({Key? key});

  @override
  State<Boracay3> createState() => _Boracay3State();
}

class _Boracay3State extends State<Boracay3> {
  int value = 4; // Assuming value is defined here

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BoracayPlay3(),
          ),
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
                    child: Image.asset(mgamapa[3]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Boracay',style: TextStyle(color: Colors.white),),
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


// Add Mayon widget here
class Mayon extends StatelessWidget {
  const Mayon({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => Mayon1()),
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
                    child: Image.asset(mgamapa[4]), // Make sure this index is correct
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Mayon Volcano',style: TextStyle(color: Colors.white),),
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

class Mayon2 extends StatelessWidget {
  const Mayon2({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => MayonPlay2()),
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
                    child: Image.asset(mgamapa[4]), // Make sure this index is correct
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Mayon Volcano',style: TextStyle(color: Colors.white),),
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



class Mayon3 extends StatelessWidget {
  const Mayon3({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => Mayonplay3()),
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
                    child: Image.asset(mgamapa[4]), 
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Mayon Volcano',style: TextStyle(color: Colors.white),),
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

class Rice1 extends StatefulWidget {
  const Rice1({Key? key});

  @override
  State<Rice1> createState() => _Rice1State();
}

class _Rice1State extends State<Rice1> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => RicePlay1(),
          ),
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
                    child: Image.asset(mgamapa[5]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Banaue Rice Terraces',style: TextStyle(color: Colors.white),),
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


class Rice2 extends StatefulWidget {
  const Rice2({Key? key});

  @override
  State<Rice2> createState() => _Rice2State();
}

class _Rice2State extends State<Rice2> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Riceplay2(),
          ),
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
                    child: Image.asset(mgamapa[5]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Banaue Rice Terraces',style: TextStyle(color: Colors.white),),
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


class Rice3 extends StatefulWidget {
  const Rice3({Key? key});

  @override
  State<Rice3> createState() => _Rice3State();
}

class _Rice3State extends State<Rice3> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Riceplay3(),
          ),
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
                    child: Image.asset(mgamapa[5]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Banaue Rice Terraces',style: TextStyle(color: Colors.white),),
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