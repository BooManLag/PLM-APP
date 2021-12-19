import 'package:flutter/material.dart';
import 'package:plm_app_final/contacts/contactdata.dart';

class ContactInformation extends StatefulWidget {
  @override
  _ContactInformationState createState() => _ContactInformationState();
}

class _ContactInformationState extends State<ContactInformation> {
  late List<Data> contacts;
  final columns = ['Office', 'Phone', 'Email'];

  List<DataColumn> getColumns(List<String> column) => column
      .map((String column) => DataColumn(
            label: Text(column),
          ))
      .toList();

  List<DataCell> getCells(List<dynamic> cells) => cells
      .map((data) => DataCell(Container(
            width: 100,
            child: Text(
              '$data',
              style: TextStyle(fontSize: 12.0),
            ),
          )))
      .toList();

  List<DataRow> getRows(List<Data> contacts) => contacts.map((Data contact) {
        final cells = [contact.office, contact.phone, contact.email];
        return DataRow(cells: getCells(cells));
      }).toList();

  @override
  void initState() {
    super.initState();
    this.contacts = List.of(allData);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 200.0,
            title: Container(
              height: 160,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('PAMANTASAN NG LUNGSOD NG MAYNILA',
                    style: TextStyle(fontSize: 14)),
              ),
            ),
            flexibleSpace: Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: Container(
                height: 140,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage("assets/images/Telephone.jpg"))),
              ),
            ),
            leading: Align(
              alignment: Alignment.topCenter,
              child: BackButton(onPressed: () {
                Navigator.pop(context);
              }),
            ),
            backgroundColor: Color(0xFF006699),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Administratives'),
                Tab(text: 'Colleges'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    DataTable(
                      headingRowHeight: 40.0,
                      dataRowHeight: 60.0,
                      columnSpacing: 20.0,
                      columns: getColumns(columns),
                      rows: getRows(contacts),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    DataTable(
                      headingRowHeight: 40.0,
                      dataRowHeight: 60.0,
                      columnSpacing:20.0,
                      columns: getColumns(columns),
                      rows: getRows(contacts),
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


