import 'package:flutter/material.dart';
import 'package:plm_app_final/main/home.dart';

void main() {
  runApp( const MaterialApp(
    home: admissionsPage1(),
  ),
  );
}

class admissionsPage1 extends StatelessWidget {
  const admissionsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: CustomScrollView(
              slivers: <Widget> [

                SliverAppBar(
                  backgroundColor: const Color(0xFF006699),
                  pinned: true,
                  title: const Text("PAMANTASAN NG LUNGSOD NG MAYNILA", textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.white),
                  ),
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  bottom: PreferredSize(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFC909),
                        ),
                        height: 50,
                        child: Center(
                            child: Text(
                              "PLMAT / PLMAT RESULTS",
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white),
                            )),
                      ),
                      preferredSize: Size.fromHeight(50.0)),
                ),

                SliverList(
                  delegate: SliverChildListDelegate(
                    <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/admissions.png'),
                              fit: BoxFit.cover),
                        ),
                        height: 170,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 30.0, 100.0, 0.0),
                        child: Text("PLMAT: First Step to studying At PLM",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xFF006699)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                        child: Text(
                          "The Pamantasan ng Lungsod ng Maynila Admission Test (PLMAT) is four-hour entrance examination consisting of sub-test in English, Science, Mathematics, Filipino and Abstract Reasoning.",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 5.0),
                        child: Text(
                          "Those who would like to study at Pamantasan ng Lungsod ng Maynila must apply for the Pamantasan ng Lungsod ng Maynila Admission Test (PLMAT). Anyone who wants to study undergraduate programs must pass the PLMAT.",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 10.0, 200.0, 0.0),
                        child: Text("Who Can take the PLMAT?",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xFF006699)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        child: Text(
                          "Who may apply? Anyone who meets any of the following may apply for PLMAT:",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 20.0, 0.0),
                        child: Text(
                          "• A senior high school student expecting to graduate in or before June 2021",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                          "•	A senior high school graduate and has not officially enrolled in any college course ",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 20.0, 0.0),
                        child: Text(
                          "•	Alternative Learning System (ALS) completers and Accreditation & Equivalency (A&E) passers (high school level)",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 10.0, 20.0, 5.0),
                        child: Text("We also accept applicants who are not residents of Manila.",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 10.0, 185.0, 10.0),
                        child: Text("About PLMAT?",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xFF006699)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                        child: Text("How much is the application fee?",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 20.0, 0.0),
                        child: Text("•	No fees will be collected from applicants.",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                        child: Text("How much is the tuition fee?",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 20.0, 0.0),
                        child: Text("•	Undergraduate students do not pay tuition. As a public university, Pamantasan ng Lungsod ng Maynila offers tuition-free education to undergraduate students, pursuant to the Republic Act 10931 or “Universal Access to Quality Tertiary Education Act”. ",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                        child: Text("How do I apply?",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 20.0, 40.0),
                        child: Text("•	Undergraduate students do not pay tuition. As a public university, Pamantasan ng Lungsod ng Maynila offers tuition-free education to undergraduate students, pursuant to the Republic Act 10931 or “Universal Access to Quality Tertiary Education Act”. ",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('GO TO PLMAT WEBSITE',
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Colors.black),
                          ),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFC909)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  )
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('APPLY NOW',
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Colors.black),
                          ),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFC909)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  )
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 30.0),
                        child: Builder(
                          builder: (context) => ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => admissionsPage2()
                              ));
                            },
                            child: Text('VIEW PLMAT RESULTS',
                              style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.black),
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFC909)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    )
                                )
                            ),
                          ),
                        ),
                      ),

                    ],

                  ),
                ),


              ],


            )
        )
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
class admissionsPage2 extends StatelessWidget {
  admissionsPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[

            SliverAppBar(
              backgroundColor: const Color(0xFF006699),
              pinned: true,
              title: const Text(
                "PAMANTASAN NG LUNGSOD NG MAYNILA", textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.white),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              bottom: PreferredSize(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFC909),
                    ),
                    height: 50,
                    child: Center(
                        child: Text(
                          "PLMAT / PLMAT RESULTS",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white),
                        )),
                  ),
                  preferredSize: Size.fromHeight(50.0)),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/admissions.png'),
                          fit: BoxFit.cover),
                    ),
                    height: 170,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 30.0, 185.0, 0.0),
                    child: Text("Enrollment Instructions",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF006699)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    child: Text(
                      "Starting Monday, February 1, 2021, interested applicants may access the online PLM Admission Portal at http://web1.plm.edu.ph/crs/admission. The requirements for application as well as the online form will be available for fill-up through the PLM Computerized Registration System website, which requires a student’s personal information, school background, and listing of course preferences.",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 200.0, 0.0),
                    child: Text("Tuition-Free Education:",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF006699)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    child: Text(
                      "Undergraduate students do not pay tuition. As a public university, Pamantasan ng Lungsod ng Maynila offers tuition-free education to undergraduate students, pursuant to the Republic Act 10931 or “Universal Access to Quality Tertiary Education Act”.",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 245.0, 0.0),
                    child: Text("List of Passers",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF961016)),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      child: RichText(
                        text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: 'Enter your',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                    color: Colors.black),),
                              TextSpan(
                                text: ' Full Name, Applicant Number, and Examination Date.',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black),),
                              TextSpan(
                                text: 'The following information are provided to you by the PLMAT Admission Committee that can be accessed through your provided personal email.',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                    color: Colors.black),),

                            ]
                        ),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 245.0, 10.0),
                    child: Text("Find your name:",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                    child: Container(
                      height: 45.0,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintStyle: TextStyle(fontSize: 12),
                          hintText: "Enter your full name",
                          fillColor: Color(0xFFEFEFEF),
                          filled: true,
                        ),
                      ),
                    ),

                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                      child: Container(
                          height: 45.0,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              hintStyle: TextStyle(fontSize: 12),
                              hintText: "Enter your applicant number",
                              fillColor: Color(0xFFEFEFEF),
                              filled: true,
                            ),
                          )
                      )

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),

                    child: ElevatedButton.icon(onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          side: BorderSide.none,
                          primary: Color(0xFFEFEFEF)),
                      icon: Icon(
                        Icons.calendar_today_outlined, color: Color(0xFF787878),
                      ),
                      label: Text('Select Date', textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0,
                            color: Color(0xFF787878)),),),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 15.0),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text('SEARCH RECORD',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.black),
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(15)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Colors.black),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFFFFC909)),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                          )
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 245.0, 0.0),
                    child: Text("CONGRATULATIONS!",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF961016)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum quis quis a integer. Quisque at tristique est vestibulum tincidunt arcu feugiat vel. ",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight:
                          FontWeight.normal,
                          fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, .0),
                    child: Text("Juan Dela Cruz,  BS Computer Science",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF006699)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum quis quis a integer. Quisque at tristique est vestibulum tincidunt arcu feugiat vel. ",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight:
                          FontWeight.normal,
                          fontSize: 12),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: DataTable(
                          columnSpacing: 25.0,
                          headingRowHeight: 40.0,
                          dataRowHeight: 30.0,
                          headingRowColor: MaterialStateColor.resolveWith(
                                  (states) => Color(0xFF006699)),
                          dataRowColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                            if (states.contains(MaterialState.selected))
                              return Colors.white;
                            return Color(0xFFE9E9E9);  // Use the default value.
                          }),
                          columns: [
                            DataColumn(label: Container(
                              width: 150,
                              child: Text('NAME', textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            )),
                            DataColumn(label: Container(
                              width: 150,
                              child: Text('COURSE', textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            )),
                          ],
                          rows: [
                            DataRow(cells: [
                              DataCell(
                                Container(
                                    child: Text(
                                        'ABERIN, Charisse',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontFamily: "Lato",
                                            fontWeight: FontWeight.normal,
                                            color: Color(0xFF787878),
                                            fontSize: 12))
                                ),),
                              DataCell(Center(
                                child: Text('BS Computer Science',textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF787878),
                                        fontSize: 12)),
                              )),
                            ]),
                            DataRow(selected: true,cells: [
                              DataCell(Text(
                                  'AGUILA, Jose', textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF787878),
                                      fontSize: 12))),
                              DataCell(Center(
                                child: Text('BS Computer Science',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF787878),
                                        fontSize: 12)),
                              )),
                            ]),
                            DataRow(cells: [
                              DataCell(Text(
                                  'AMORES, Ma. Pauline',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF787878),
                                      fontSize: 12))),
                              DataCell(Center(
                                child: Text('BS Computer Science',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF787878),
                                        fontSize: 12)),
                              ))
                            ]),
                            DataRow(selected: true,cells: [
                              DataCell(Text(
                                  'BACARISA, Andrea', textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF787878),
                                      fontSize: 12))),
                              DataCell(Center(
                                child: Text('BS Computer Science',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF787878),
                                        fontSize: 12)),
                              ))
                            ]),
                            DataRow(cells: [
                              DataCell(Text(
                                  'BUOT, Jared', textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF787878),
                                      fontSize: 12))),
                              DataCell(Center(
                                child: Text('BS Computer Science',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF787878),
                                        fontSize: 12)),
                              ))
                            ]),
                            DataRow(selected: true,cells: [
                              DataCell(Text(
                                  'CALEON, Baron', textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black45,
                                      fontSize: 12))),
                              DataCell(Center(
                                child: Text('BS Computer Science',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black45,
                                        fontSize: 12)),
                              ))
                            ]),

                          ],
                        ),

                      ),
                    ),
                  ),
                ],

              ),
            ),

          ],


        )
    );
  }

}
