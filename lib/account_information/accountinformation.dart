import 'package:flutter/material.dart';
import 'package:plm_app_final/account_information/accountdata.dart';

class AccountInformation extends StatefulWidget {
  @override
  _AccountInformationState createState() => _AccountInformationState();
}

class _AccountInformationState extends State<AccountInformation> {

  late List<Data> personal;
  late List<Data> school;
  final columns = [' ', ' '];

  List<DataColumn> getColumns(List<String> column) => column
      .map((String column) => DataColumn(
    label: Text(column),
  ))
      .toList();

  List<DataCell> getCells(List<dynamic> cells) => cells
      .map((data) => DataCell(Container(
    width: MediaQuery.of(context).size.width * 0.4,
    child: Text(
      '$data',
      style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold
      ),
    ),
  )))
      .toList();

  List<DataRow> getRows(List<Data> student) => student.map((Data student) {
    final cells = [student.label, student.details];
    return DataRow(cells: getCells(cells));
  }).toList();

  @override
  void initState() {
    super.initState();
    this.personal = List.of(personalData);
    this.school = List.of(schoolData);
  }

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
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    DataTable(
                      dividerThickness: 0.0,
                      headingRowHeight: 0.0,
                      dataRowHeight: 30.0,
                      columnSpacing: 30.0,
                      columns: getColumns(columns),
                      rows: getRows(personal),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Your college shall be determined from the degree program indicated here. If the degree program is erroneous, please contact your respective college's OCS. If all details shown here are correct, you may proceed to the Pre-enlistment Page by clicking the link on the menu bar.",
                          style: TextStyle(
                            fontSize: 8.0,
                            color: Colors.grey,)
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    DataTable(
                      dividerThickness: 0.0,
                      headingRowHeight: 0.0,
                      dataRowHeight: 30.0,
                      columnSpacing: 30.0,
                      columns: getColumns(columns),
                      rows: getRows(school),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Your college shall be determined from the degree program indicated here. If the degree program is erroneous, please contact your respective college's OCS. If all details shown here are correct, you may proceed to the Pre-enlistment Page by clicking the link on the menu bar.",
                          style: TextStyle(
                            fontSize: 8.0,
                            color: Colors.grey,)
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
