import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  static const yellow = const Color(0xFFFFC909);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('PAMANTASAN NG LUNGOSD NG MAYNILA', style: TextStyle(fontSize: 14)),
        leading: BackButton(onPressed: () {Navigator.pop(context);}),
        backgroundColor: Color(0xFF006699),
      ),
      body: Center(
        child: SingleChildScrollView(
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
                padding: const EdgeInsets.fromLTRB(10,30,10,10),
                child: Text(
                  'View the vicinity map, locate our pamantasan\n in Google Maps and be familiarize with the\n different building and offices.',
                  textAlign: TextAlign.center,
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.height * 0.40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/vicinitymap.png'),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/googlemapicon.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'View In Google Maps',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Locate Pamantasan ng Lungsod ng Maynila\n using Google Maps for a better view.',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary:yellow,
                    onPrimary: Colors.black,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.90, 40)
                ),
                onPressed: () {},
                child: Text('Open in Google Maps'),

              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: Text(
                  'Be familiarize with the different Building and\n Offices of Pamantasan',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'To see the next image, click on the right arrow head button.\n And left arrow head button to preview back',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
                child: ConstrainedBox(
                    child: Swiper(
                      outer: false,
                      itemBuilder: (BuildContext context,int index){
                        return new Image.network("https://scontent.fmnl3-1.fna.fbcdn.net/v/t1.6435-9/34319867_519565291774848_9176474575985180672_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=e3f864&_nc_eui2=AeGo1vu733P8wXxP70wRcMJOrD94b06r3q6sP3hvTqvervFOFxAlf9NuTMqW6pov6OF-HZtEepQFMIpuB48GOH6k&_nc_ohc=cascBvpXZu8AX_QaCor&_nc_ht=scontent.fmnl3-1.fna&oh=00_AT8c_KHZyB7n5AvDB_yKfe0NHqXYilW4_2GdviLO75S-Wg&oe=61DD8520",fit: BoxFit.fill);
                      },
                      itemCount: 5,
                      layout: SwiperLayout.TINDER,
                      itemHeight: MediaQuery.of(context).size.width * 0.50,
                      itemWidth: MediaQuery.of(context).size.width * 0.80,
                      control: SwiperControl(),
                      pagination: SwiperPagination(),
                    ),
                    constraints:new BoxConstraints.loose(new Size(MediaQuery.of(context).size.width * 0.90, MediaQuery.of(context).size.width * 0.50))
                ),
              )
            ],
          ),
        ),
      )
  );
}
