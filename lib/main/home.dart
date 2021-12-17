import 'package:flutter/material.dart';
import 'package:plm_app_final/onboard/welcome.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:plm_app_final/profile/profile.dart';
import 'package:plm_app_final/sidenav/sidenav.dart';
import 'package:plm_app_final/style/styles.dart';
import 'package:plm_app_final/sidenav/sidenav.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final carousel = [
  'https://plm.edu.ph/images/news/press-releases/Pamantasa--ng-Lungsod-ng-Maynila-facade.jpg',
  'https://www.cnn.ph/.imaging/mte/demo-cnn-new/750x450/dam/cnn/2020/4/22/PLM-Facade_CNNPH.jpg/jcr:content/PLM-Facade_CNNPH.jpg',
  'https://upload.wikimedia.org/wikipedia/en/thumb/6/6e/Ph-mm-manila-intramuros-pamantasan_ng_lungsod_ng_maynila_%28plm%29_%282014%29.JPG/2560px-Ph-mm-manila-intramuros-pamantasan_ng_lungsod_ng_maynila_%28plm%29_%282014%29.JPG',
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: SideNav(),
        appBar: AppBar(
          title: Text('PAMANTASAN NG LUNGOSD NG MAYNILA', style: TextStyle(fontSize: 14)),
          backgroundColor: Color(0xFF006699),
        ),
        body: Column(
          children: [
            Container(
              height: 40,
              color: Color(0xFFFFC909),
              // ignore: prefer_const_constructors
              child: Center(
                // ignore: prefer_const_constructors
                child: Text(
                  "Explore PLM",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
            //Carousel
            Container(
              height: 100,
              width: double.infinity,
              child: Swiper(
                itemCount: 3,
                itemHeight: 50,
                itemWidth: 50,
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    carousel[index],
                    fit: BoxFit.fitWidth,
                  );
                },
                pagination: SwiperPagination(),
                control: SwiperControl(color: Colors.white),
              ),
            ),
            BottomHomePage(),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.09),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFA31920),
                    elevation: 5,
                    fixedSize: Size(350, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Connect()),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
