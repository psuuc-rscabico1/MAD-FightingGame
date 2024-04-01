import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:midterm_project/screens/onboarding/onboard1.dart';
import 'package:midterm_project/screens/onboarding/onboard2.dart';
import 'package:midterm_project/screens/onboarding/onboard3.dart';
import 'package:midterm_project/screens/onboarding/onboarding4.dart';
import 'package:midterm_project/screens/splashscreen.dart';
import 'package:midterm_project/screens/startgame.dart';
import 'package:flame_audio/flame_audio.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  runApp(MidtermProject());
}
class MidtermProject extends StatelessWidget {
  const MidtermProject({super.key});

  @override
  Widget build(BuildContext context) {
     FlameAudio.bgm.initialize();
//     return MaterialApp(
     
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(useMaterial3: true),
//       builder: EasyLoading.init(),
//       home: StartGame(),
//     );
//   }
// }

 return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding1': (context) => OnboardingScreen1(),
        '/onboarding2': (context) => OnboardingScreen2(),
        '/onboarding3': (context) => OnboardingScreen3(),
        '/onboarding4': (context) => OnboardingScreen4(),
        // '/onboard5': (context) => OnboardingScreen5(),
      },
    );
  }
}