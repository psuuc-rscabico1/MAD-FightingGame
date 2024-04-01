import 'package:flutter/material.dart';

class ContactInformationScreen extends StatelessWidget {
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
          'Impormasyon sa Pakikipag-ugnayan',
          style: TextStyle(color: Colors.white),
          
          
        ),
        backgroundColor: const Color.fromARGB(255, 4, 29, 50),
      ),
      backgroundColor: const Color.fromARGB(255, 4, 29, 50),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                      'Mayroon kang anumang katanungan, puna, o suhestiyon? Narito ang mga detalye kung paano makipag-ugnayan sa amin:',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Email: sample@email.com',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Telepono: (123) 456-7890',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Address: Sample Address, Lungsod, Lalawigan, 12345',
                      style: TextStyle(fontSize: 16.0),
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
