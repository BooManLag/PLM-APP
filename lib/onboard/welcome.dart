import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plm_app_final/style/styles.dart';
import 'package:plm_app_final/onboard/login.dart';
import 'package:plm_app_final/main/home.dart';
import 'package:plm_app_final/onboard/after_welcome.dart';

void main() {
  runApp(Connect());
}

class Connect extends StatefulWidget {
  @override
  _ConnectState createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF006699),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.1),
                child: Image.asset("assets/images/PLMSeal.png"),
              ),
            ),
            WelcomeStyle(),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.1),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFE9E9E9),
                    elevation: 5,
                    fixedSize: Size(300, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AfterWelcome()),
                  );
                },
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.09),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFFC909),
                    elevation: 5,
                    fixedSize: Size(300, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
