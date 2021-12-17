import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 150, top: 100),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
              radius: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 25),
            child: Text(
              'Juan Dela Cruz',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lato',
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 25),
            child: Text(
              '2019-12354',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Lato',
                  fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 10),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/account_info.png",
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Account Information",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato',
                          fontSize: 15),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/calendar.png",
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Settings",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato',
                          fontSize: 15),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/messages.png",
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text(
                      "Ask Us",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato',
                          fontSize: 15),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, top: 110),
            child: Container(
              child: Row(
                children: [
                  ElevatedButton.icon(
                    icon: Icon(Icons.exit_to_app),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      onPrimary: Colors.white,
                      shadowColor: Colors.grey,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      minimumSize: Size(100, 40), //////// HERE
                    ),
                    onPressed: () {},
                    label: Text('Sign out'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
