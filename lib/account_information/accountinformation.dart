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
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 280.0,
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackButton(
                  color: Colors.white,
                    onPressed: () {Navigator.pop(context);}),
              ],
            ),
            backgroundColor: Color(0xFFEAB700),
            elevation: 0,
            flexibleSpace: Container(
              padding: EdgeInsets.all(0.0),
              height: 300.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage("assets/profilebg.png"),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/profilepic.png"),
                      ),
                    ),
                  ),
                  Text(
                    "Lambert Dela Cruz",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("2020-11028",
                      style: TextStyle(
                        color: Colors.white,)
                  ),
                  Text("ltdelacruz2020@plm.edu.ph",
                      style: TextStyle(
                        color: Colors.white,)
                  ),
                ],
              ),
            ),
            bottom: TabBar(
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              labelColor: Colors.black,
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              unselectedLabelColor: Color(0xFFE9E9E9),
              tabs: [
                Tab(text: 'Personal'),
                Tab(text: 'School'),
              ],
            ),
          ),
          body: TabBarView(
            children: [ Column(
                children: [
                  Container(
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

              Column(
                children: [
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
