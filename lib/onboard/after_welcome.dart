import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:plm_app_final/main/home.dart';
import 'package:url_launcher/url_launcher.dart';

class AfterWelcome extends StatefulWidget {
  @override
  _AfterWelcomeState createState() => _AfterWelcomeState();
}

final carousel = [
  'https://plm.edu.ph/images/news/press-releases/Pamantasa--ng-Lungsod-ng-Maynila-facade.jpg',
  'https://www.cnn.ph/.imaging/mte/demo-cnn-new/750x450/dam/cnn/2020/4/22/PLM-Facade_CNNPH.jpg/jcr:content/PLM-Facade_CNNPH.jpg',
  'https://upload.wikimedia.org/wikipedia/en/thumb/6/6e/Ph-mm-manila-intramuros-pamantasan_ng_lungsod_ng_maynila_%28plm%29_%282014%29.JPG/2560px-Ph-mm-manila-intramuros-pamantasan_ng_lungsod_ng_maynila_%28plm%29_%282014%29.JPG',
];

class _AfterWelcomeState extends State<AfterWelcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 0.5), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                height: 60,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/PLMSeal.png"),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Pamantasan ng Lungsod ng Maynila",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF006699),
                            fontFamily: "Lato",
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 55),
                child: ConstrainedBox(
                    child: Swiper(
                      outer: false,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          carousel[index],
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: 3,
                      itemHeight: MediaQuery.of(context).size.width,
                      itemWidth: MediaQuery.of(context).size.width * 0.9,
                      control: SwiperControl(),
                      pagination: SwiperPagination(),
                    ),
                    constraints: new BoxConstraints.loose(new Size(
                        MediaQuery.of(context).size.width * 0.90,
                        MediaQuery.of(context).size.width * 0.50))),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 20),
                child: Container(
                  child: Text("Pamantasan ng Lungsod ng Maynila",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFFFC909),
                          fontFamily: "Lato",
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 45),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Text(
                    'Pamantasan ng Lungsod ng Maynila (PLM) is the first and only chartered and autonomous university funded by a city government. '
                    'It was created by the Congress of the Philippines by virtue of Republic Act No. 4196 or An Act Authorizing the City of Manila to '
                    'Establish and Operate the University of City of Manila on June 19, 1965.',
                    style: TextStyle(fontFamily: "Lato"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 45),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Text(
                    'The university first opened its gates on July 17, 1967 to 556 first-year students at '
                    'its campus in the historic Intramuros district, which served as the seat of power '
                    'during the Spanish occupation. Currently, about 10,000 graduate and post-graduate '
                    'students grace its halls to receive PLM’s quality education',
                    style: TextStyle(fontFamily: "Lato"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.1),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 2,
                      side: BorderSide(width: 2.0, color: Color(0xFFFFC909)),
                      fixedSize: Size(350, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    launch('https://plm.edu.ph/');
                  },
                  child: Text(
                    "PLM Website",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 45),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFC909),
                      elevation: 2,
                      fixedSize: Size(350, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
