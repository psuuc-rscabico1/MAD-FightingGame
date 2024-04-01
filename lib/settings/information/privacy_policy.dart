import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 29, 50),
        title: Text(
          'Pribadong Patakaran (Privacy Policy)',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 4, 29, 50),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: SizedBox(
            width: 700, 
            child: Card(
              elevation: 4.0,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ang aplikasyong ito ay hindi humihingi ng anumang impormasyon mula sa iyo upang magamit ito. Ito ay libreng gamitin at mapapakinabangan ng lahat. Ang mga larawan at iba pang materyal na ginamit ay naayos na may sapat na pahintulot at pagpapahalaga sa karapatan sa pag-aari. Salamat sa inyong pagtangkilik at tiwala.',
                      style: TextStyle(fontSize: 15.0, color: Colors.black87),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
