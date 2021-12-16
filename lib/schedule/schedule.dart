import 'package:flutter/material.dart';
import'package:plm_app_final/main/home.dart';

void main() {
  runApp(const Schedule());
}

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF006699),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage()));
              },
            ),
            title: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Center(
                child: Text(
                  "PAMANTASAN NG LUNGSOD NG MAYNILA",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFC909),
                ),
                height: 50,
                child: Center(
                    child: Text(
                      "SCHEDULE",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  child: Text(
                    "CLASS SCHEDULE",
                    style: TextStyle(
                        color: Colors.indigo,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
              Container(
                color: Colors.white70,
                padding: EdgeInsets.all(1.0),
                /** Outer BoxConstraints Widget **/
                constraints: BoxConstraints(
                    minHeight: 50, minWidth: 50, maxHeight: 600, maxWidth: 370),
                child: SingleChildScrollView( child: DataTable(
                  columnSpacing: 10.0,
                  dataRowHeight: 70.0,
                  headingRowColor: MaterialStateColor.resolveWith(
                          (states) => Colors.blue),
                  columns: [
                    DataColumn(
                        label: Container(
                          width: 50,
                          child: Text('CLASS',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                        )),
                    DataColumn(
                        label: Container(
                          width: 55,
                          child: Text('SECTION',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        )),
                    DataColumn(
                        label: Container(
                          width: 70,
                          child: Text('SCHEDULE',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        )),
                    DataColumn(
                        label: Container(
                          child: Text('UNITS',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        )),
                  ],
                  rows: [
                    ///////////////////// R O W # 1 /////////////////////
                    DataRow( cells: [
                      DataCell(Text(
                        'Automata Theory and Formal Languages - CSC 0311',
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                            fontSize: 12),
                      )),
                      DataCell(Center(
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                      DataCell(Text(
                          'F 6:00p-7:30p LecSyncOnline FIELD,F 7:30p-9:00p LecAsync FIELD	',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('3',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                    ]),
                    ///////////////////// R O W # 2 /////////////////////
                    DataRow(selected: true, cells: [
                      DataCell(Text(
                          'Programming Languages (lec) - CSC 0312',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                      DataCell(Text(
                          'W 4:00p-5:00p LecAsync FIELD,Th 4:00p-5:00p LecSyncOnline FIELD	',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('2',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                    ]),

                    ///////////////////// R O W # 3 /////////////////////
                    DataRow(cells: [
                      DataCell(Text(
                          'Programming Languages (lab) - CSC 0312.1',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                      DataCell(Text(
                          'W 2:30p-4:00p LabAsync FIELD,Th 2:30p-4:00p LabSyncOnline FIELD	',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                    ]),

                    ///////////////////// R O W # 4 /////////////////////
                    DataRow(selected: true, cells: [
                      DataCell(Text(
                          'Software Engineering (lec) - CSC 0313	',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                      DataCell(Text(
                          'W 5:00p-6:00p LecAsync FIELD,Th 5:00p-6:00p LecSyncOnline FIELD',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('2',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                    ]),

                    ///////////////////// R O W # 5 /////////////////////
                    DataRow(cells: [
                      DataCell(Text(
                          'Software Engineering (lab) - CSC 0313.1',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                      DataCell(Text(
                          'Th 6:00p-7:30p LabSyncOnline FIELD,Th 7:30p-9:00p LabAsync FIELD',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                    ]),

                    ///////////////////// R O W # 6 /////////////////////
                    DataRow(selected: true, cells: [
                      DataCell(Text('Operating System (lec) - CSC 0314	',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                      DataCell(Text(
                          'M 11:00a-12:00p LecAsync FIELD,T 11:00a-12:00p LecSyncOnline FIELD',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('2',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                    ]),

                    ///////////////////// R O W # 7 /////////////////////

                    DataRow( cells: [
                      DataCell(Text('Operating System (lab) - CSC 0314.1',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                      DataCell(Text(
                          'M 9:30a-11:00a LabAsync FIELD,T 9:30a-11:00a LabSyncOnline FIELD',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                    ]),

                    ///////////////////// R O W # 8 /////////////////////
                    DataRow(selected: true,cells: [
                      DataCell(Text('Intelligent System (lec) - CSC 0315',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                      DataCell(Text(
                          'M 6:00p-7:00p LecAsync FIELD,T 6:00p-7:00p LecSyncOnline FIELD',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('2',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                    ]),

                    ///////////////////// R O W # 9 /////////////////////
                    DataRow( cells: [
                      DataCell(Text('Intelligent System (lab) - CSC 0315.1',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                      DataCell(Text(
                          'M 7:00p-8:30p LabAsync FIELD,T 7:00p-8:30p LabSyncOnline FIELD',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                    ]),

                    ///////////////////// R O W # 10 /////////////////////
                    DataRow(selected: true,cells: [
                      DataCell(Text(
                          'Information Assurance Security - CSC 0316',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                      DataCell(Text(
                          'S 7:00a-8:30a LecAsync FIELD,S 8:30a-10:00a LecSyncOnline FIELD',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('3',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                    ]),

                    ///////////////////// R O W # 11 /////////////////////
                    DataRow(cells: [
                      DataCell(Text('Living in the IT Era - ITE 0001	',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('30',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                      DataCell(Text(
                          'W 7:00a-8:30a LecSyncOnline FIELD,Th 7:00a-8:30a LecAsync FIELD	',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12))),
                      DataCell(Center(
                        child: Text('3',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 12)),
                      )),
                    ]),
                  ],
                ),
                ),
              ),
              Center(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 70, vertical: 12),
                  child: Container(
                    alignment: Alignment.center,
                    //padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(255, 201, 9, 1),
                          side: BorderSide(
                              width: 1, color: Color.fromRGBO(255, 201, 9, 1)),
                          minimumSize: Size.fromHeight(50),
                        ),
                        onPressed: () {},
                        child: Text('Download Class Schedule')),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
