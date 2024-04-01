import 'dart:async';
import 'dart:math';
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

class ArenaPlay extends StatefulWidget {
  const ArenaPlay({Key? key}) : super(key: key);

  @override
  State<ArenaPlay> createState() => _ArenaPlayState();
}

class _ArenaPlayState extends State<ArenaPlay> {
  int health = 100;
  String sulat = '';
  int indexskill = 0;
  int mapindex = 3;
  int enemyHealth = 100;
  int enemyindexskill = 0;
  bool isalert = false;
  bool isUser1Turn = true;
  bool sadyangpop = true;
  Timer? skillTimer;
  Timer? notouch;
  Timer? secondTimer;
  Timer? thirdTimer;

  @override
  void dispose() {
    skillTimer?.cancel();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                      Text('health: $health / 100'),
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
                                          'assets/images/vincestanding.gif',
                                          width: 30,
                                          height: 30,
                                        ),
                                      ),
                                      Text('health: $enemyHealth / 100'),
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
                              child: Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Column(
                                  children: [
                                    SizedBox(height: 30),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Martyr',
                                            style:
                                                TextStyle(color: Colors.white),
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
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  children: [
                                    SizedBox(height: 30),
                                    Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Vince',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Image.asset(
                                            enemyindexskill <
                                                    vince_animation.length
                                                ? vince_animation[
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
                          ],
                        ),

                        // Stack(
                        //   children: [
                        //      Container(
                        //     alignment: Alignment.center,

                        //     child: Text(sulat,style: TextStyle(backgroundColor: Colors.white),),
                        //   ),
                        //   ],
                        // )
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
                color: Colors.blueGrey,
                child: SingleChildScrollView(
                  scrollDirection: axisDirectionToAxis(AxisDirection.left),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: isUser1Turn
                              ? takot
                              : sadyangpop || sadyangpop
                                  ? takot
                                  : null,
                          child: Text(
                            'Tumakas',
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
                                          indexskill = 3;
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
                                        case 'Ang Kama-O':
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
                                        health = 100;
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
                                          QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.success,
                                            title: 'You Win',
                                            confirmBtnText: 'Sunod na Level',
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

                                          if (currentContext != null) {
                                            Navigator.pushAndRemoveUntil(
                                              currentContext!,
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      LevelScreenz()),
                                              (route) => false,
                                            );
                                          }
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
                                          random.nextInt(vinceskill.length);

                                      final selectedSkill =
                                          vinceskill[selectedSkillIndex];
                                      enemyindexskill =
                                          selectedSkill['enemyindexskill'];

                                      final damage =
                                          selectedSkill['damage'] as int;
                                      health -= damage;
                                      indexskill = 6;
                                    }
                                    await Future.delayed(Duration(seconds: 5));
                                    isUser1Turn = false;
                                    final random = Random();
                                    final selectedSkillIndex =
                                        random.nextInt(vinceskill.length);

                                    final selectedSkill =
                                        vinceskill[selectedSkillIndex];
                                    enemyindexskill =
                                        selectedSkill['enemyindexskill'];

                                    final damage =
                                        selectedSkill['damage'] as int;
                                    health -= damage;
                                    indexskill = 6;
                                    // Timer(Duration(seconds: 5), () {
                                    //       setState(() {
                                    //         enemyindexskill = 0;
                                    //         sulat = '';
                                    //         isUser1Turn = true;
                                    //       });
                                    //     });

                                    if (health <= 0) {
                                      sadyangpop = false;

                                      setState(() {
                                        sulat =
                                            'Si Vince ay gumamit ng ${selectedSkill['name']}';
                                      });
                                      indexskill = 5;
                                      isUser1Turn = false;

                                      Timer(Duration(seconds: 6), () {
                                        setState(() {
                                          sulat += '';
                                          sadyangpop ? indexskill = 7 : null;

                                          indexskill = 7;
                                          enemyindexskill = 0;
                                        });
                                      });
                                      health = 0;

                                      BuildContext? currentContext = context;

                                      Timer(Duration(seconds: 7), () {
                                        QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.info,
                                            title: 'Ikaw Ay Natalo',
                                            confirmBtnText: 'Bumalik Sa Level',
                                            onConfirmBtnTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (_) =>
                                                          StartGame()));
                                            },
                                            cancelBtnText: 'Try Again',
                                            onCancelBtnTap: () {
                                              health = 100;
                                              enemyHealth = 100;
                                              Navigator.of(context).pop();
                                            });
                                        setState(() {
                                          sulat += 'Game Over';
                                          sulat = '';
                                          health = 100;
                                        });
                                      });

                                      secondTimer = Timer.periodic(
                                          Duration(seconds: 15), (timer) {
                                        timer.cancel();

                                        if (currentContext != null) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      LevelScreenz()));
                                        } else {
                                          Timer(Duration(seconds: 5), () {
                                            setState(() {
                                              sulat = '';
                                            });
                                          });
                                        }
                                      });
                                    } else {
                                      thirdTimer = Timer.periodic(
                                          Duration(seconds: 5), (timer) {
                                        timer.cancel();
                                        if (enemyHealth > 0) {
                                          setState(() {
                                            indexskill = 0;
                                            enemyindexskill = 0;
                                            sulat = '';
                                            isUser1Turn = true;
                                          });
                                        } else {
                                          enemyindexskill = 0;
                                          sulat = '';
                                          isUser1Turn = true;
                                        }
                                      });

                                      sulat =
                                          'Si Vince ay gumamit ng ${selectedSkill['name']}';
                                    }
                                  }
                                : null,
                            child: Text(
                              skill,
                              style: TextStyle(fontSize: 12),
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
