import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class AcadCalendar extends StatefulWidget {
  @override
  _AcadCalendarState createState() => _AcadCalendarState();
}

class _AcadCalendarState extends State<AcadCalendar> {
  static const yellow = const Color(0xFFFFC909);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('PAMANTASAN NG LUNGOSD NG MAYNILA', style: TextStyle(fontSize: 14)),
        leading: BackButton(onPressed: () {Navigator.pop(context);}
        ),
        backgroundColor: Color(0xFF006699),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              color: Color(0xFFFFC909),
              child: Center(
                child:
                Text("Academic Calendar",
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/images/PLM.jpg'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Download Academic Calendar',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'View or download our Academic Calendar for\n AY 2020 to 2021.',
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(yellow),
              ),
              onPressed: () {},
              child: Text('Download'),

            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'To Zoom In, click the magnifying glass icon ',
                style: TextStyle(fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ),
            ConstrainedBox(
                child: Swiper(
                  outer: false,
                  itemBuilder: (BuildContext context,int index){
                    return new Image.network(
                        "https://plm.edu.ph/images/downloads/our/AY2021-2022_academic_calendar__Page_1b.jpg",
                        fit: BoxFit.fill);
                  },
                  itemCount: 2,
                  layout: SwiperLayout.TINDER,
                  itemHeight: MediaQuery.of(context).size.width,
                  itemWidth: MediaQuery.of(context).size.width * 0.80,
                  control: SwiperControl(),
                  pagination: SwiperPagination(),
                ),
                constraints: new BoxConstraints.loose(new Size(
                    MediaQuery.of(context).size.width * 0.90,
                    MediaQuery.of(context).size.width * 0.50))),
          ],
        ),
      )
  );
}
