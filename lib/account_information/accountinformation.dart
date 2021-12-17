import 'package:flutter/material.dart';

void main() {
  runApp(const AccountInformation());
}

class AccountInformation extends StatelessWidget {
  const AccountInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {Navigator.pop(context);},
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage("assets/plm_pic.png"),
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                      onPressed: () {},
                      color: Color(0xFFFFC909),
                      child: Text('Personal'),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                      onPressed: () {},
                      child: Text('School'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Text(
                      "First Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 105),
                      child: Text("JUAN"),
                    ),
                  ],
                ),
              ),
            ), Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Text(
                      "Last Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 105.5),
                      child: Text("DELA CRUZ"),
                    ),
                  ],
                ),
              ),
            ),Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Text(
                      "Middle Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 89),
                      child: Text("MARTINEZ"),
                    ),
                  ],
                ),
              ),
            ),Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Text(
                      "Pedigree",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 115),
                      child: Text("None"),
                    ),
                  ],
                ),
              ),
            ),Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Text(
                      "Gender",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 126),
                      child: Text("Male"),
                    ),
                  ],
                ),
              ),
            ),Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Text(
                      "Civil Status",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Text("Status"),
                    ),
                  ],
                ),
              ),
            ),Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Text(
                      "Country of Citizenship",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: Text("Philippines"),
                    ),
                  ],
                ),
              ),
            ),Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Text(
                      "Personal Email",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Text("jdelacruz2021@gmail.com"),
                    ),
                  ],
                ),
              ),
            ),Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Text(
                      "Mobile Number",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 76),
                      child: Text("09639392864"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
