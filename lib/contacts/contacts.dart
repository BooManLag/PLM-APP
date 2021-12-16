import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plm_app_final/main/home.dart';


void main() {
  runApp(Contacts());
}

const color = Color(0xFF006699);

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: color,
        appBarTheme: AppBarTheme(color: const Color(0xFF006699)),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                'PAMANTASAN NG LUNGSOD NG MAYNILA',
                style: TextStyle(fontSize: 11.0),
              ),
            ),
          ),
        ),
        body: Column(children: [
          Container(
            padding: EdgeInsets.all(15.0),
            width: double.infinity,
            color: Color(0xFFFFC909),
            child: Text(
              'Colleges & Administratives Contact Information',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            height: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/Telephone.jpg'),
              ),
            ),
          ),
          Container(
              child: Row(
                children: [
                  // ignore: deprecated_member_use
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                      onPressed: () {},
                      color: Color(0xFFFFC909),
                      child: Text('Administratives'),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                      onPressed: () {},
                      child: Text('Colleges'),
                    ),
                  ),
                ],
              )),
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
            child: DataTable(columns: [
              DataColumn(
                  label: Text('Office',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ))),
              DataColumn(
                  label: Text('Phone',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ))),
              DataColumn(
                  label: Text('           Email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      )))
            ], rows: [
              DataRow(cells: <DataCell>[
                DataCell(Text('Board of Regents',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('(+632) 8 643 2565',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('plmbor@plm.edu.ph',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text('Office of the President',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('(+632) 8 643 2503',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('plm_op@plm.edu.ph',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text('Office of the Executive President',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('(+632) 8 643 2507',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('oevp@plm.edu.ph',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text('Office of the VP for Public Affairs',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('(+632) 8 643 2518',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('vppa@plm.edu.ph',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text('Office of the University Legal Counsel',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('(+632) 8 643 2510',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('oulc@plm.edu.ph ',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ))),
              ]),


            ]),
          ),

          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 40.0,
                      child: FlatButton(
                        child: Image.asset(
                          'assets/arrowleft.png',
                          width: 20,
                          height: 20,
                        ),
                        onPressed: () {},
                      )),
                  SizedBox(
                      width: 50.0,
                      child: FlatButton(
                        child: Image.asset(
                          'assets/no1_highlighted.png',
                          width: 20,
                          height: 20,
                        ),
                        onPressed: () {},
                      )),
                  SizedBox(
                      width: 50.0,
                      child: FlatButton(
                        child: Image.asset(
                          'assets/no2.png',
                          width: 20,
                          height: 20,
                        ),
                        onPressed: () {},
                      )),
                  SizedBox(
                      width: 50.0,
                      child: FlatButton(
                        child: Image.asset(
                          'assets/no3.png',
                          width: 20,
                          height: 20,
                        ),
                        onPressed: () {},
                      )),
                  SizedBox(
                      width: 50.0,
                      child: FlatButton(
                        child: Image.asset(
                          'assets/no4.png',
                          width: 20,
                          height: 20,
                        ),
                        onPressed: () {},
                      )),
                  SizedBox(
                      width: 50.0,
                      child: FlatButton(
                        child: Image.asset(
                          'assets/no5.png',
                          width: 20,
                          height: 20,
                        ),
                        onPressed: () {},
                      )),
                  SizedBox(
                      width: 50.0,
                      child: FlatButton(
                        child: Image.asset(
                          'assets/no6.png',
                          width: 20,
                          height: 20,
                        ),
                        onPressed: () {},
                      )),
                  SizedBox(
                      width: 40.0,
                      child: FlatButton(
                        child: Image.asset(
                          'assets/arrowright.png',
                          width: 20,
                          height: 20,
                        ),
                        onPressed: () {},
                      )),
                ],
              )),
        ]),
      ),
    );
  }
}
