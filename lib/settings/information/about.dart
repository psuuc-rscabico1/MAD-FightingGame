import 'package:flutter/material.dart';

class StoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kabuoang Istorya',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 4, 29, 50),
      ),
      backgroundColor: const Color.fromARGB(255, 4, 29, 50),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Text(
              'Ang aplikasyong ito ay naglalayong magbigay ng mahalagang impormasyon sa mga estudyante tungkol sa mga isyu at impormasyon na may kinalaman sa kanilang mga karapatan at tungkulin bilang mga mag-aaral. Layunin din nito na magbigay ng mabisang plataporma para sa pagpapalitan ng mga kuru-kuro at pananaw sa mga aktwal na karanasan at pangyayari sa loob at labas ng paaralan.',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nakasalalay sa ating mga kabataan ang kinabukasan ng bansa. Sa pamamagitan ng pagbibigay sa kanila ng tamang impormasyon at pagbibigay-daan sa kanilang mga tinig at saloobin, naglalayon ang aplikasyong ito na maging bahagi ng paghubog sa mga makabagong lider at aktibong mamamayan ng ating lipunan.',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 16.0),
            Text(
              'Sa "Iskolar Showdown," hinaharap ni Martyr, ang bida, ang iba\'t ibang mga hamon at hadlang sa kanyang paglalakbay patungo sa pagiging tuktok na iskolar. Bilang isang iskolar na may malalaking pangarap, hindi lamang nakatuon si Martyr sa akademikong kahusayan kundi pati na rin sa pagharap sa personal at interpersonal na mga hamon.',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 16.0),
            Text(
              'Sa buong laro, nakakaranas si Martyr ng mga kapwa iskolar na humahamon sa kanya sa larangan ng pag-aaral at pati na rin sa personal. Ang mga labang ito ay kadalasang lumalala patungo sa mga intensong pagtatalo ng lalaki-lalaki kung saan kailangan ni Martyr na ipakita ang kanyang pagiging matatag, determinasyon, at integridad.',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 16.0),
            Text(
              'Habang nilalakbay ni Martyr ang mapanlikhang kapaligiran ng akademiko, hinaharap din niya ang mga dilimang moral na mga desisyon na sumusubok sa kanyang pagkatao. Kailangan niyang gumawa ng mahihirap na mga desisyon na hindi lamang nakakaapekto sa kanyang akademikong tagumpay kundi pati na rin sa kanyang ugnayan sa mga kaibigan, mga tagapayo, at mga kaaway.',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 16.0),
            Text(
              'Sa bawat hakbang ni Martyr, bumubuo siya ng mga alyansa sa mga kapwa iskolar na may parehong pagnanais sa pag-aaral at ambisyon sa tagumpay. Kasama nila, sinusuportahan nila ang isa\'t isa sa hirap at ginhawa, na bumubuo ng isang masiglang komunidad ng mga iskolar na nagkakaisa sa kanilang mga layunin at mga halaga.',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 16.0),
            Text(
              'Gayunpaman, hindi maiiwasan ni Martyr ang mga hadlang sa kanyang paglalakbay. Nakakaranas siya ng mga sandaling pag-aalinlangan sa sarili, mga kabiguan, at mga balakid na nagbabanta sa kanyang mga pangarap. Ngunit sa determinasyon, pagtitiyaga, at suporta ng kanyang mga kaibigan, natututunan ni Martyr na lampasan ang adbersidad at lumabas na mas matatag kailanman.',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 16.0),
            Text(
              'Sa pag-unlad ni Martyr sa kanyang akademikong paglalakbay, natututo siyang mahalagang aral tungkol sa pagiging matatag, pagtitiyaga, at ang tunay na kahulugan ng tagumpay. Sa huli, pinupuri ng "Iskolar Showdown" ang di-matitinag na diwa ng kabataang Pilipino at ang kanilang hindi nagbabagong pangako sa kahusayan, patunay na tunay nga, "kabataan ang pag-asa ng bayan."',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
