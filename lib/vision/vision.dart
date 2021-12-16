import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Mission()));
}

class Mission extends StatelessWidget {
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(fontFamily: "Lato"),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              //ang dapat na nandito is yung mangyayari if the button is pressed
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text(
            "PAMANTASAN NG LUNGSOD NG MAYNILA",
            style: TextStyle(
                fontFamily: "Lato", fontWeight: FontWeight.bold, fontSize: 12),
          ),
          backgroundColor: Color(0xFF006699),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.06,
                width: screenWidth,
                padding: EdgeInsets.only(top: screenHeight * 0.02),
                child: Text(
                  "Hymn, Vision & Mission",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 13.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFFFC909),
                ),
              ),
              Container(
                width: screenWidth,
                child: Image.asset("assets/images/plmimage.png",
                    fit: BoxFit.contain),
              ),
              Row(
                children: [
                  Container(
                    height: screenHeight * 0.06,
                    width: screenWidth * 0.125,
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.065,
                        top: screenHeight * 0.032), //backk
                    child: Image.asset(
                      "assets/images/clock_icon.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    //time of song
                    height: screenHeight * 0.06,
                    width: screenWidth - (screenWidth * 0.125),
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.01, top: screenHeight * 0.036),
                    child: Text(
                      "1 minute, 11 seconds, Contains 238 words",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 10.5,
                          color: Color(0xFF787878)),
                    ),
                  ),
                ],
              ),
              Container(
                //University Hymn
                height: screenHeight * 0.047,
                width: screenWidth,
                padding: EdgeInsets.only(
                    left: screenWidth * 0.07, top: screenHeight * 0.0075),
                child: Text(
                  "University Hymn",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 15,
                      color: Color(0xFF006699),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                //lyrics intro
                height: screenHeight * 0.185,
                width: screenWidth,
                padding: EdgeInsets.only(
                    left: screenWidth * 0.07,
                    top: screenHeight * 0.0075,
                    right: screenWidth * 0.07),
                child: Text(
                  "Music helps unite the PLM community. Every Monday and official school activity, students, faculty, and staff alike sing in unison the “Pamantasang Mahal”, PLM’s official hymn. \n\nLyrics: Gatpuno Antonio J. Villegas, Mayor of Manila (1968) Lyrics presented to the Board of Regents in Maharnilad (official name of the famous Manila City Hall).\n\n Music: Prof. Felipe Padilla de Leon",
                  style: TextStyle(fontFamily: "Lato", fontSize: 12),
                ),
              ),
              Container(
                //title of song
                alignment: Alignment.center,
                height: screenHeight * 0.035,
                width: screenWidth,
                child: Text(
                  "Pamantasang Mahal",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                //Official hymn of pamantasan ng lungsod ng maynila
                alignment: Alignment.center,
                height: screenHeight * 0.025,
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  "Official hymn of the Pamantasan ng Lungsod ng Maynila",
                  style: TextStyle(fontFamily: "Lato", fontSize: 12),
                ),
              ),
              Container(
                //Song lyrics
                height: screenHeight * 0.319,
                width: screenWidth,
                padding: EdgeInsets.only(
                    top: screenHeight * 0.018, bottom: screenHeight * 0.012),
                child: Text(
                  "Pamantasan, Pamantasang Mahal\n Nagpupugay kami't nag-aalay\n Ng Pag-ibig, taos na paggalang\n Sa patnubay ng aming isipan.\n\n Karunungang tungo'y kaunlaran\nHinuhubog kaming kabataan\nMaging Pilipinong mero'ng dangal\n Puso'y tigib ng kadakilaan.\n\n Pamantasang Lungsod ng Maynila\n Kaming lahat dito'y iyong punla\n Tutuparin pangarap mo't nasa\n Pamantasan kami'y nanunumpa.\n Pamantasan kami'y nanunumpa.\n",
                  style: TextStyle(fontFamily: "Lato", fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                //Play in youtube
                alignment: Alignment.center,
                height: screenHeight * 0.047,
                width: screenWidth,
                child: Text(
                  "Play in YouTube",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFA31920)),
                ),
              ),
              Container(
                //Vision & Mission
                height: screenHeight * 0.047,
                width: screenWidth,
                padding: EdgeInsets.only(
                    left: screenWidth * 0.07, top: screenHeight * 0.0075),
                child: Text(
                  "Vision & Mission",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 15,
                      color: Color(0xFF006699),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                //Vision and Mission body
                height: screenHeight * 0.430,
                width: screenWidth,
                padding: EdgeInsets.fromLTRB(screenWidth * 0.07,
                    screenHeight * 0.0075, screenWidth * 0.07, 0),
                child: Text(
                  "The Pamantasan ng Lungsod ng Maynila (PLM), created by a National Charter (RA 4196, 1965), was envisioned to be Manila's premiere institution for higher learning. It provides superior standards of instructions, as well as opportunities for outstanding research in technology and other areas for the development of the intellect and to advance human knowledge.\n\nThe Pamantasan ng Lungsod ng Maynila has adopted the policy of preferential option for the poor and therefore has prioritized education for the underprivileged but talented students of Manila. Committed to the highest intellectual and ethical standards, PLM strives to produce competent graduates with integrity who will be responsible citizens who can contribute effectively to local, national and global initiatives for the progressive and sustainable development of humanity.\n\nGuided by the values of academic excellence, integrity and social responsibility, PLM endeavors to be one of the leading universities in the ASEAN.",
                  style: TextStyle(fontFamily: "Lato", fontSize: 12),
                ),
              ),
              Container(
                //Vision
                height: screenHeight * 0.035,
                width: screenWidth,
                padding: EdgeInsets.only(
                    left: screenWidth * 0.07, top: screenHeight * 0.0075),
                child: Text(
                  "Vision",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                //Vision Body
                height: screenHeight * 0.08,
                width: screenWidth,
                padding: EdgeInsets.only(
                    left: screenWidth * 0.07,
                    top: screenHeight * 0.009,
                    right: screenWidth * 0.07),
                child: Text(
                  "The Pamantasan ng Lungsod ng Maynila shall be the premier people’s university pursuing public interest and national development.",
                  style: TextStyle(fontFamily: "Lato", fontSize: 12),
                ),
              ),
              Container(
                //Mission
                height: screenHeight * 0.035,
                width: screenWidth,
                padding: EdgeInsets.only(
                    left: screenWidth * 0.07, top: screenHeight * 0.0075),
                child: Text(
                  "Mission",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                //Mission Body
                height: screenHeight * 0.08,
                width: screenWidth,
                padding: EdgeInsets.only(
                    left: screenWidth * 0.07,
                    top: screenHeight * 0.009,
                    right: screenWidth * 0.07),
                child: Text(
                  "The Pamantasan ng Lungsod ng Maynila shall be the premier people’s university pursuing public interest and national development.",
                  style: TextStyle(fontFamily: "Lato", fontSize: 12),
                ),
              ),
              Container(
                //Core values
                height: screenHeight * 0.035,
                width: screenWidth,
                padding: EdgeInsets.only(
                    left: screenWidth * 0.07, top: screenHeight * 0.0075),
                child: Text(
                  "Core Values",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                //Core values Body
                height: screenHeight * 0.15,
                width: screenWidth,
                padding: EdgeInsets.only(
                    left: screenWidth * 0.07,
                    top: screenHeight * 0.009,
                    right: screenWidth * 0.07),
                child: Text(
                  "The Pamantasan ng Lungsod ng Maynila shall be guided by the values of academic excellence, integrity and social responsibility, and by the principles of Karunungan, Kaunlaran and Kadakilaan.",
                  style: TextStyle(fontFamily: "Lato", fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
