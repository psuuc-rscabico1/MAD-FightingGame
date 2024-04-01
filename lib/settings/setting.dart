
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:midterm_project/settings/information/about.dart';
import 'package:midterm_project/settings/information/contact_info.dart';
import 'package:midterm_project/settings/information/developers.dart';
import 'package:midterm_project/settings/information/privacy_policy.dart';


class AboutApp extends StatefulWidget {
  const AboutApp({super.key});

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        title: Text('Tungkol Sa Aplikasyon'),
        backgroundColor:  Color.fromARGB(210, 4, 1, 1),
      ),
      body: Container(color: Color.fromARGB(210, 4, 1, 1),
        child: ListView(
          children: [
            Column(
              children: [
               SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromARGB(255, 73, 108, 137),
                          Color.fromARGB(255, 153, 37, 37),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Salamat Sa Suporta',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900),
                          ),
                          SizedBox(height: 5),
                          Text('Gawa Nila',
                              style: TextStyle(color: Colors.black87)),
                          SizedBox(height: 5),
                          Text(
                            'Clarence Vince Razo | Raymart Cabico | Marie Del Rosario',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 73, 108, 137),
                          Color.fromARGB(255, 153, 37, 37),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.ondemand_video_outlined, color: Colors.white),
                      title: Text('pang-akit na bidyo',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Introduction()));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'makaaabot sa amin',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 73, 108, 137),
                          Color.fromARGB(255, 153, 37, 37),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.mail, color: Colors.white),
                      title: Text('Makipag-ugnayan',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ContactInformationScreen()));
                      },
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [
                         const Color.fromARGB(255, 73, 108, 137),
                          Color.fromARGB(255, 153, 37, 37),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.code, color: Colors.white),
                      title: Text('Mga gumawa ng aplikasyon',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DevelopersScreen()));
                      },
                    ),
                  ),
                ),
               SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Legal',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 73, 108, 137),
                          Color.fromARGB(255, 153, 37, 37),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.privacy_tip,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Pribadong Patakaran',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PrivacyPolicyScreen()));
                      },
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 73, 108, 137),
                          Color.fromARGB(255, 153, 37, 37),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.book, color: Colors.white),
                      title: Text('Kabuoang Istorya',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StoryScreen()));
                      },
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 73, 108, 137),
                          Color.fromARGB(255, 153, 37, 37),
                        
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.restart_alt_sharp,
                        color: Colors.white,
                      ),
                      title: Text('Umalis',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        SystemNavigator.pop();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
