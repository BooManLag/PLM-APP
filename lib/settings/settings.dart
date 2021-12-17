import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plm_app_final/account_information/accountinformation.dart';

void main() {
  runApp(const Settings());
}

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _switchvalue = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF006699),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {Navigator.pop(context);},
          ),
          title: Text(
            "Settings",
            style: TextStyle(
              fontSize: 12,
              fontFamily: "Lato",
              fontWeight: FontWeight.normal,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset("assets/dark_mode.png"),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          "Dark Mode",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Switch(
                            value: _switchvalue,
                            onChanged: (bool value) {
                              setState(() {
                                _switchvalue = value;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 5,
                      ),
                      child: Text(
                        "Account",
                        style: TextStyle(
                          color: Color(0xFF9F9F9F),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset("assets/account_info.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "View Account Information",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: IconButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AccountInformation()));},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFC4C4C4),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/change_pass.png",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Change Password"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 154),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFC4C4C4),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset("assets/privacy_secu.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Privacy and Security",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 159),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFC4C4C4),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        "Notifications",
                        style: TextStyle(
                          color: Color(0xFF9F9F9F),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset("assets/notif.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Notifications",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 196),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFC4C4C4),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset("assets/language.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Language",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 214),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFC4C4C4),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 58),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFE9E9E9),
                    padding: EdgeInsets.symmetric(horizontal: 166, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF1F1F1F),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
