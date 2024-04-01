import 'dart:async';
import 'dart:math';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:midterm_project/gamedata/character/characteranimation.dart';
import 'package:midterm_project/gamedata/character/enemyrandomskill.dart';
import 'package:midterm_project/gamedata/mapa/mapa.dart';
import 'package:midterm_project/gamedata/mapa/mapa2.dart';
import 'package:midterm_project/gamedata/skills/dataskills.dart';
import 'package:midterm_project/gamedata/character/enemiesz.dart';
import 'package:midterm_project/screens/screenlevels.dart';
import 'package:midterm_project/screens/startgame.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class Riceplay2 extends StatefulWidget {
  const Riceplay2({Key? key}) : super(key: key);

  @override
  State<Riceplay2> createState() => _Riceplay2State();
}

class _Riceplay2State extends State<Riceplay2> {
  @override
  void initState() {
    super.initState();

    FlameAudio.bgm.play('banaue.mp3');
  }

  int health = 120;
  String sulat = '';
  int indexskill = 0;
  int mapindex = 5;
  int enemyHealth = 200;
  int enemyindexskill = 0;
  bool isalert = false;
  bool isUser1Turn = true;
  bool sadyangpop = true;
  bool galaw = false;
  bool kalabangalaw = false;
  bool changebutton = true;

  Timer? skillTimer;
  Timer? notouch;
  Timer? secondTimer;
  Timer? thirdTimer;

@override
void dispose() {
  skillTimer?.cancel();
  secondTimer?.cancel();
  thirdTimer?.cancel();
  FlameAudio.bgm.stop();
  super.dispose();
}

  void takot() {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.warning,
      title: 'Aalis Kaba Sa Laban?',
      cancelBtnText: 'Lalaban Ako',
      onCancelBtnTap: () {
        Navigator.pop(context);
      },
      confirmBtnText: isUser1Turn ? 'Hindi ko sya kaya' : 'Maghintay',
      onConfirmBtnTap: () {
        isUser1Turn
            ? Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => LevelScreenz()),
                (route) => false)
            : Navigator.pop(context);
      },
    );
  }

  void talo() {
    QuickAlert.show(
        context: context,
        type: QuickAlertType.info,
        title: 'Ikaw Ay Natalo',
        confirmBtnText: 'Bumalik Sa Menu',
        onConfirmBtnTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => StartGame()));
        },
       );
    setState(() {
      sulat += 'Ang Laro Ay Natapos Na';
      sulat = '';
      health = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.brown[900],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Stack(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          mapindex < mgamapa.length ? mgamapa[mapindex] : '',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Card(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          ryu_animation[0],
                                          width: 30,
                                          height: 30,
                                        ),
                                      ),
                                      Text('Buhay: $health / 120'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Card(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          'assets/images/nonoytayo.gif',
                                          width: 30,
                                          height: 30,
                                        ),
                                      ),
                                      Text('Buhay: $enemyHealth / 200'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                sulat,
                                style: TextStyle(backgroundColor: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: AnimatedContainer(
                                alignment: galaw
                                    ? Alignment(3.1, 3.1)
                                    : Alignment(0, 0),
                                duration: Duration(seconds: 1),
                                child: Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 30),
                                      Container(
                                        margin: EdgeInsets.only(right: 20),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Martyr',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Image.asset(
                                              indexskill < ryu_animation.length
                                                  ? ryu_animation[indexskill]
                                                  : '',
                                              width: 150,
                                              height: 150,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: AnimatedContainer(
                                alignment: kalabangalaw
                                    ? Alignment(-3.1, -3.1)
                                    : Alignment(0, 0),
                                duration: Duration(seconds: 1),
                                child: Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 30),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Christian',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Image.asset(
                                              enemyindexskill <
                                                      christian_animation.length
                                                  ? christian_animation[
                                                      enemyindexskill]
                                                  : '',
                                              width: 150,
                                              height: 150,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.brown[900],
                child: SingleChildScrollView(
                  scrollDirection: axisDirectionToAxis(AxisDirection.left),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      changebutton
                          ? ElevatedButton(
                              onPressed: isUser1Turn
                                  ? takot
                                  : sadyangpop || sadyangpop
                                      ? takot
                                      : null,
                              style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero, // Remove padding
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                                    ),
                                  backgroundColor: Colors.redAccent[700], // Set red background color
                                  ),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                                    ),
                                    child: Container(
                                      constraints: BoxConstraints(minWidth: 88, minHeight: 36), // Adjust size as needed
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.exit_to_app,
                                            color: Colors.white,// Use the exit icon
                                            size: 16, // Adjust icon size as needed
                                          ),
                                          SizedBox(width: 4), // Add spacing between icon and text
                                          Text(
                                            'Tumakas',
                                            style: TextStyle(fontSize: 10, color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ) 
                          : ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => LevelScreenz()));
                              },
                              child: Text(
                                'umalis',
                                style: TextStyle(fontSize: 10),
                              )),
                      SizedBox(
                        width: 52,
                      ),
                      ...ryuSkills.map(
                        (skill) => Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: ElevatedButton(
                            onPressed: isUser1Turn && enemyHealth > 0
                                ? () async {
                                    setState(() {
                                      isUser1Turn = false;
                                      switch (skill) {
                                        case 'Dalawang Suntok':
                                          galaw = true;
                                          indexskill = 1;
                                          enemyindexskill = 6;
                                          enemyHealth -= 12;
                                          skillTimer =
                                              Timer(Duration(seconds: 5), () {
                                            setState(() {
                                              isUser1Turn = true;
                                              indexskill = 0;
                                              enemyindexskill = 0;
                                            });
                                          });
                                          break;
                                        case 'Sipang malakasan':
                                          galaw = true;
                                          indexskill = 2;
                                          enemyindexskill = 6;
                                          enemyHealth -= 15;
                                          skillTimer =
                                              Timer(Duration(seconds: 5), () {
                                            setState(() {
                                              isUser1Turn = true;
                                              indexskill = 0;
                                              enemyindexskill = 0;
                                            });
                                          });
                                          break;
                                        case 'Atakeng Pangmalupitan':
                                          galaw = true;
                                          indexskill = 3;
                                          enemyindexskill = 6;
                                          enemyHealth -= 35;
                                          skillTimer =
                                              Timer(Duration(seconds: 5), () {
                                            setState(() {
                                              isUser1Turn = true;
                                              indexskill = 0;
                                              enemyindexskill = 0;
                                            });
                                          });
                                          break;
                                        case 'Ang Kama-O':
                                          galaw = true;
                                          indexskill = 4;
                                          enemyHealth -= 50;
                                          enemyindexskill = 6;
                                          skillTimer =
                                              Timer(Duration(seconds: 5), () {
                                            setState(() {
                                              isUser1Turn = true;
                                              indexskill = 0;
                                              enemyindexskill = 0;
                                            });
                                          });
                                          break;
                                        default:
                                          break;
                                      }
                                      if (enemyHealth <= 0) {
                                        health = 120;
                                        enemyHealth = 0;
                                        enemyindexskill = 5;
                                        sulat =
                                            'Si Martyr ay gumamit ng $skill';
                                        Timer(Duration(seconds: 8), () {
                                          sulat = '';
                                          enemyHealth = 0;
                                        });

                                        BuildContext? currentContext = context;

                                        Timer(Duration(seconds: 5), () {
                                          changebutton = false;
                                          QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.success,
                                            title: 'Ikaw Ay Nagwagi',
                                            confirmBtnText: 'sunod na Level',
                                            onConfirmBtnTap: () {
                                              secondTimer?.cancel();

                                              Navigator.pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (_) =>
                                                        LevelScreenz()),
                                                (route) => false,
                                              );
                                            },
                                          );
                                        });

                                        secondTimer = Timer.periodic(
                                            Duration(seconds: 10), (timer) {
                                          timer.cancel();

                                          if (currentContext != null) {}
                                        });
                                      } else {
                                        sulat =
                                            'Si Martyr ay gumamit ng $skill';
                                        Timer(Duration(seconds: 5), () {
                                          setState(() {
                                            sulat = '';
                                          });
                                        });
                                      }
                                    });
                                    if (enemyHealth == 0) {
                                      await Future.delayed(
                                          Duration(seconds: 10));

                                      isUser1Turn = false;
                                      final random = Random();
                                      final selectedSkillIndex =
                                          random.nextInt(nonoyskills.length);

                                      final selectedSkill =
                                          nonoyskills[selectedSkillIndex];
                                      enemyindexskill =
                                          selectedSkill['enemyindexskill'];

                                      final damage =
                                          selectedSkill['damage'] as int;
                                      health -= damage;
                                      
                                      indexskill = 6;
                                    }
                                    await Future.delayed(Duration(seconds: 5));
                                    galaw = false;
                                    kalabangalaw = true;
                                    isUser1Turn = false;
                                    final random = Random();
                                    final selectedSkillIndex =
                                        random.nextInt(nonoyskills.length);
                                    final selectedSkill =
                                        nonoyskills[selectedSkillIndex];
                                    enemyindexskill =
                                        selectedSkill['enemyindexskill'];
                                    final damage =
                                        selectedSkill['damage'] as int;
                                   
                                    if(damage == 32){
                                      enemyHealth +=50;
                                    }else{
                                    health -= damage;
                                    indexskill = 6;
                                    }
                                    indexskill = 6;

                                    if (health <= 0) {
                                      sadyangpop = false;

                                      setState(() {
                                        sulat =
                                            'Si Christian ay gumamit ng ${selectedSkill['name']}';
                                      });
                                      indexskill = 5;

                                      isUser1Turn = false;

                                      Timer(Duration(seconds: 9), () {
                                        setState(() {
                                          talo();
                                          sulat += '';
                                          sadyangpop ? indexskill = 7 : null;

                                          indexskill = 7;
                                          enemyindexskill = 0;
                                        });
                                      });
                                      health = 0;

                                      changebutton = false;
                                    } else {
                                      thirdTimer = Timer.periodic(
                                          Duration(seconds: 5), (timer) {
                                        timer.cancel();
                                        if (enemyHealth > 0) {
                                         
                                          kalabangalaw = false;
                                          setState(() {
                                            indexskill = 0;
                                            enemyindexskill = 0;
                                            sulat = '';
                                            isUser1Turn = true;
                                          });
                                        } else {
                                          kalabangalaw = false;
                                          enemyindexskill = 0;
                                          sulat = '';
                                          isUser1Turn = true;
                                        }
                                      });

                                      kalabangalaw = true;

                                      sulat =
                                          'Si Christian ay gumamit ng ${selectedSkill['name']}';
                                    }
                                  }
                                : null,
                             style: ElevatedButton.styleFrom(   
                                  padding: EdgeInsets.symmetric(horizontal: 5), // Remove padding
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                                  ),
                                  
                                   backgroundColor: Colors.transparent,),
                            child: Ink(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/oakwood.jpg'), // Replace with your image path
                                  fit: BoxFit.cover, // Adjust the fit as needed
                                ),
                                borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                              ),
                              child: Container(
                                constraints: BoxConstraints(minWidth: 150, minHeight: 36), // Adjust size as needed
                                alignment: Alignment.center,
                                child: Text(
                                  skill,
                                  style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500 ),
                              
                                ),
                              ),
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
