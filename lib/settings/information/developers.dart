import 'package:flutter/material.dart';

class DevelopersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Text(
          'Mga Developer',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 4, 29, 50),
      ),
      backgroundColor: const Color.fromARGB(255, 4, 29, 50),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            color: Colors.transparent,
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
                    'Narito ang mga developer ng aplikasyong ito:',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DeveloperInfo(
                        avatarAsset: 'assets/images/mee.png',
                        name: 'Clarence Vince Razo',
                        email: 'vince27@email.com',
                      ),
                      DeveloperInfo(
                        avatarAsset: 'assets/images/ray.png',
                        name: 'Raymart Cabico',
                        email: 'mart23@email.com',
                      ),
                      DeveloperInfo(
                        avatarAsset: 'assets/images/mari.png',
                        name: 'Marie Del Rosario',
                        email: 'delrosario385@gmail.com',
                      ),
                    ],
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

class DeveloperInfo extends StatelessWidget {
  final String avatarAsset;
  final String name;
  final String email;

  const DeveloperInfo({
    Key? key,
    required this.avatarAsset,
    required this.name,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(avatarAsset),
          radius: 50,
        ),
        SizedBox(height: 8.0),
        Text(
          name,
          style: TextStyle(fontSize: 16.0, color: Colors.white),
          
        ),
        SizedBox(height: 4.0),
        Text(
          email,
          style: TextStyle(fontSize: 14.0, color: Colors.white),
        ),
      ],
    );
  }
}
