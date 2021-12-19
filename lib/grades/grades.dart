import 'package:flutter/material.dart';
import 'package:linkwell/linkwell.dart';

class Grades extends StatefulWidget {
  @override
  _GradesState createState() {
    return _GradesState();
  }
}

class _GradesState extends State {
  static const yellow = const Color(0xFFFFC909);
  bool _isVisible1 = false;
  bool _isVisible2 = false;
  bool _isVisible3 = false;
  bool _isVisible4 = false;
  bool _isVisible = true;


  void showGrades1() {
    setState(() {
      _isVisible1 = !_isVisible1;
    });
  }

  void showGrades2() {
    setState(() {
      _isVisible2 = !_isVisible2;
    });
  }

  void showGrades3() {
    setState(() {
      _isVisible3 = !_isVisible3;
    });
  }

  void showGrades4() {
    setState(() {
      _isVisible4 = !_isVisible4;
    });
  }

  @override
  Widget build(BuildContext context) {
    _isVisible = (_isVisible1 == true || _isVisible2 == true || _isVisible3 == true  || _isVisible4 == true  ) ? false : true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('PAMANTASAN NG LUNGOSD NG MAYNILA',
                style: TextStyle(fontSize: 14)),
            leading: BackButton(onPressed: () {
              Navigator.pop(context);
            }),
            backgroundColor: Color(0xFF006699),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFC909),
                  ),
                  height: 50,
                  child: Center(
                      child: Text(
                    "Grades",
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  )),
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage("assets/images/PLM.jpg"))),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 10.0),
                    child: Text(
                      "STUDENT GRADES",
                      style: TextStyle(
                          color: Colors.indigo,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 10, 0, 20.0),
                  child: Text(
                    "Please select the year and semester",
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontWeight: FontWeight.normal,
                        color: Colors.black12,
                        fontSize: 16),
                  ),
                ),
                FlatButton(
                  child: Text('AY 2016-2017 First Semester',
                      style: TextStyle(color: Color(0xFF006699))),
                  onPressed: showGrades1,
                ),
                Visibility(visible: _isVisible1, child: GradesContent()),
                FlatButton(
                  child: Text('AY 2016-2017 Second Semester',
                      style: TextStyle(color: Color(0xFF006699))),
                  onPressed: showGrades2,
                ),
                Visibility(visible: _isVisible2, child: GradesContent()),
                FlatButton(
                  child: Text('AY 2017-2018 First Semester',
                      style: TextStyle(color: Color(0xFF006699))),
                  onPressed: showGrades3,
                ),
                Visibility(visible: _isVisible3, child: GradesContent()),
                FlatButton(
                  child: Text('AY 2017-2018 Second Semester',
                      style: TextStyle(color: Color(0xFF006699))),
                  onPressed: showGrades4,
                ),
                Visibility(visible: _isVisible4, child: GradesContent()),
                Visibility(
                  visible: _isVisible,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: yellow,
                            onPrimary: Colors.black,
                            minimumSize: Size(
                                MediaQuery.of(context).size.width * 0.90, 40)),
                        onPressed: () {},
                        child: Text('Download'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class GradesContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: new ListTile(
            title: Center(
              child: DataTable(
                columnSpacing: 10.0,
                dataRowHeight: 30.0,
                headingRowColor:
                    MaterialStateColor.resolveWith((states) => Colors.blue),
                columns: [
                  DataColumn(
                      label: Container(
                    width: 60,
                    child: Text('SUBJECT \nCODE/\nSECTION',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  )),
                  DataColumn(
                      label: Container(
                    width: 150,
                    child: Text('SUBJECT TITLE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  )),
                  DataColumn(
                      label: Container(
                    width: 30,
                    child: Text('UNITS',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  )),
                  DataColumn(
                      label: Container(
                    child: Text('GRADE',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  )),
                ],
                rows: [
                  ///////////////////// R O W # 1 /////////////////////
                  DataRow(cells: [
                    DataCell(Text(
                      'ACCTG 1-1',
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.normal,
                          color: Colors.black54,
                          fontSize: 12),
                    )),
                    DataCell(Text('Accounting 1',
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                            fontSize: 12))),
                    DataCell(Text('3.0',
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                            fontSize: 12))),
                    DataCell(Center(
                      child: Text('1.75',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12)),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text(
                      'LIT 1-1',
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.normal,
                          color: Colors.black54,
                          fontSize: 12),
                    )),
                    DataCell(Text('Philippine Literature',
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                            fontSize: 12))),
                    DataCell(Text('3.0',
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                            fontSize: 12))),
                    DataCell(Center(
                      child: Text('1.75',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12)),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text(
                      'ENG 51-1',
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.normal,
                          color: Colors.black54,
                          fontSize: 12),
                    )),
                    DataCell(Text('Business Communication',
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                            fontSize: 12))),
                    DataCell(Text('3.0',
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                            fontSize: 12))),
                    DataCell(Center(
                      child: Text('1.75',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12)),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text(
                      'PED 0013-3',
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.normal,
                          color: Colors.black54,
                          fontSize: 12),
                    )),
                    DataCell(Text('Philippine Folk Dance',
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                            fontSize: 12))),
                    DataCell(Text('2.0',
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                            fontSize: 12))),
                    DataCell(Center(
                      child: Text('1.0',
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              fontSize: 12)),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text(
                      'PHILO 11-1',
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.normal,
                          color: Colors.black54,
                          fontSize: 12),
                    )),
                    DataCell(Text('Introduction to Philosophy',
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                            fontSize: 12))),
                    DataCell(Text('3.0',
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                            fontSize: 12))),
                    DataCell(Center(
                      child: Text('1.75',
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
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFFFC909),
          ),
          onPressed: () {},
          child: Text('Download Grades'),
        ),
      ],
    );
  }
}
