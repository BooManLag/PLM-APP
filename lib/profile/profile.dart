import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plm_app_final/account_information/accountinformation.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Profile",
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
              Container(
                width: 200,
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/profile_pic.png"),
                  ),
                ),
              ),
              Text(
                "Lambert Dela Cruz",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("2020-11028"),
              Text("ltdelacruz2020@plm.edu.ph"),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset("assets/account_info.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Account Information",
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
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AccountInformation()),);},
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
                      Image.asset("assets/messages.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Messages",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 185),
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
                      Image.asset(
                        "assets/calendar.png",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Calendar"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 180),
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
                      Image.asset("assets/photos.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Photos",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 194),
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
                      Image.asset("assets/transactions.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Transactions",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 165),
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
            ],
          ),
        ),
      ),
    );
  }
}
