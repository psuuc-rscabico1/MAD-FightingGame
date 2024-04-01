import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:midterm_project/gamedata/character/enemiesz.dart';
import 'package:midterm_project/screens/screenlevels.dart';
import 'package:midterm_project/settings/setting.dart';

class StartGame extends StatefulWidget {
  const StartGame({Key? key});

  @override
  State<StartGame> createState() => _StartGameState();
}

class _StartGameState extends State<StartGame> {
  bool kantato = false;

  @override
  void initState() {
    super.initState();

    FlameAudio.bgm.play('mainbgmmusic.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/dashboard-new.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/images/martysuntok.gif', // Replace with your GIF path
                  width: 300, // Adjust the width as needed
                  height: 300, // Adjust the height as needed
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonWithBackground(
                    onPressed: () {
                      FlameAudio.bgm.stop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => LevelScreenz()),
                      );
                    },
                    label: 'MAKIDIGMA',
                    icon: Icons.play_arrow,
                    backgroundColor: Colors.brown,
                  ),
                  SizedBox(height: 10),
                  buttonWithBackground(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => AboutApp()),
                      );
                    },
                    label: 'IMPORMASYON',
                    icon: Icons.info,
                    backgroundColor: Colors.brown,
                  ),
                  SizedBox(height: 10),
                  buttonWithBackground(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    label: 'UMALIS',
                    icon: Icons.exit_to_app,
                    backgroundColor: Colors.brown,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonWithBackground({
    required VoidCallback onPressed,
    required String label,
    required IconData icon,
    required Color backgroundColor,
  }) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/oka.webp'), // Replace with your button background image path
          fit: BoxFit.cover,
          
        ),
        borderRadius: BorderRadius.circular(20.0), // Rounded corners
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, size: 22, color: Colors.brown[900],), // Adjust icon size as needed
        label: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // Make button background transparent
          shadowColor: Colors.transparent, // Remove button shadow
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    FlameAudio.bgm.stop();
    super.dispose();
  }
}
