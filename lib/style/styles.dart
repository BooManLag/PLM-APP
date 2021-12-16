// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:division/division.dart';
import 'package:flutter/widgets.dart';
import 'package:plm_app_final/admissions/admissions.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:plm_app_final/map/map.dart';
import 'package:plm_app_final/aboutplm/about_plm.dart';
import 'package:plm_app_final/academiccalendar/acadcalendar.dart';
import 'package:plm_app_final/onboard/after_welcome.dart';
import 'package:plm_app_final/schedule/schedule.dart';


class WelcomeStyle extends StatelessWidget {
  const WelcomeStyle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
      child: Column(
        children: [
          Parent(
            child: Txt("Welcome To",
                style: TxtStyle()
                  ..fontWeight(FontWeight.w400)
                  ..textColor(Colors.white)
                  ..fontFamily("Lato")
                  ..fontSize(25)
                  ..letterSpacing(4)),
            style: ParentStyle(),
          ),
          Parent(
            child: Txt("PLM Student Portal",
                style: TxtStyle()
                  ..bold()
                  ..textColor(Colors.white)
                  ..fontFamily("Lato")
                  ..fontSize(30)
                  ..letterSpacing(2)),
            style: ParentStyle()
              ..padding(top: MediaQuery.of(context).size.width / 55),
          ),
          Parent(
            child: Container(
              child: Txt(
                  "The PLM Mobile is the official mobile application of Pamantasan ng "
                  "Lungsod ng Maynila. It is designed to provide easy access to "
                  "important information for students, faculty, staff, and visitors.",
                  style: TxtStyle()
                    ..fontWeight(FontWeight.w200)
                    ..textColor(Colors.white)
                    ..fontFamily("Lato")
                    ..fontSize(12)
                    ..letterSpacing(2)),
            ),
            style: ParentStyle()
              ..width(300)
              ..alignment.center()
              ..padding(top: MediaQuery.of(context).size.width / 25),
          ),
        ],
      ),
    );
  }
}

class BottomHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width / 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Txt(
                'ANNOUCEMENTS: ',
                style: TxtStyle()
                  ..textColor(Colors.grey)
                  ..fontFamily("Lato"),
              ),
              InkWell(
                child: Txt(
                  'COVID VACCINE FOR MINORS',
                  style: TxtStyle()
                    ..textColor(Colors.blue)
                    ..fontFamily("Lato"),
                ),
                onTap: () => launch('https://plm.edu.ph/'),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 50),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    color: Color(0xFF0083CA),
                    height: 55,
                    minWidth: 55,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AboutPLM()));
                    },
                    child: Icon(Icons.account_balance_outlined,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 90),
                  child: Txt(
                    'ABOUT PLM',
                    style: TxtStyle()
                      ..fontFamily("Lato")
                      ..bold(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 30),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    color: Color(0xFFF15A22),
                    height: 55,
                    minWidth: 55,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AcadCalendar()));
                    },
                    child: Icon(Icons.calendar_today, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 90),
                  child: Column(
                    children: [
                      Txt(
                        'ACADEMIC',
                        style: TxtStyle()
                          ..fontFamily("Lato")
                          ..bold(),
                      ),
                      Txt(
                        'CALENDAR',
                        style: TxtStyle()
                          ..fontFamily("Lato")
                          ..bold(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 30),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    color: Color(0xFFFFC60B),
                    height: 55,
                    minWidth: 55,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                    child: Icon(Icons.check, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 90),
                  child: Column(
                    children: [
                      Txt(
                        'STUDENT',
                        style: TxtStyle()
                          ..fontFamily("Lato")
                          ..bold(),
                      ),
                      Txt(
                        'FACULTY',
                        style: TxtStyle()
                          ..fontFamily("Lato")
                          ..bold(),
                      ),
                      Txt(
                        'EVALUATION',
                        style: TxtStyle()
                          ..fontFamily("Lato")
                          ..bold(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 35),
                  child: FlatButton(
                    color: Color(0xFFFFC60B),
                    height: 55,
                    minWidth: 55,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                    child: Icon(Icons.lightbulb_outlined, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 90),
                  child: Txt(
                    'GRADES',
                    style: TxtStyle()
                      ..fontFamily("Lato")
                      ..bold(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 20),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    color: Color(0xFFB2D235),
                    height: 55,
                    minWidth: 55,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Maps()));
                    },
                    child: Icon(Icons.pin_drop_outlined, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 90),
                  child: Txt(
                    'MAP',
                    style: TxtStyle()
                      ..fontFamily("Lato")
                      ..bold(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 15),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    color: Color(0xFFEC008C),
                    height: 55,
                    minWidth: 55,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                    child: Icon(Icons.book_outlined, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 90),
                  child: Column(
                    children: [
                      Txt(
                        'ONLINE PUBLIC',
                        style: TxtStyle()
                          ..fontFamily("Lato")
                          ..bold(),
                      ),
                      Txt(
                        'ACCESS',
                        style: TxtStyle()
                          ..fontFamily("Lato")
                          ..bold(),
                      ),
                      Txt(
                        'CATALOG',
                        style: TxtStyle()
                          ..fontFamily("Lato")
                          ..bold(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.width / 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width / 350),
                    child: FlatButton(
                      color: Color(0xFF00AAAD),
                      height: 55,
                      minWidth: 55,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Schedule()));
                      },
                      child:
                          Icon(Icons.access_time_outlined, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.width / 90),
                    child: Txt(
                      'SCHEDULE',
                      style: TxtStyle()
                        ..fontFamily("Lato")
                        ..bold(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width / 40),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      color: Color(0xFF00AEEF),
                      height: 55,
                      minWidth: 55,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => admissionsPage1()));
                        },
                      child: Icon(Icons.assignment, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width / 90),
                    child: Txt(
                      'ADMISSION',
                      style: TxtStyle()
                        ..fontFamily("Lato")
                        ..bold(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width / 10),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      color: Color(0xFF602D91),
                      height: 55,
                      minWidth: 55,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      onPressed: () {},
                      child: Icon(Icons.people, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width / 90),
                    child: Txt(
                      'ALUMNI',
                      style: TxtStyle()
                        ..fontFamily("Lato")
                        ..bold(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
