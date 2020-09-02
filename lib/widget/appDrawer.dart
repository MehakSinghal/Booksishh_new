import 'package:booksishh/screens/Orders_screen.dart';
import 'package:booksishh/screens/all_books_screen.dart';
import 'package:booksishh/screens/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            //SizedBox(height: 30,),
            Stack(
              children: [
                Container(
                  height: 260,
                  width: 304,
                  child: Image.asset(
                    "assets/img2.PNG",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 20,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Positioned(
                  top: 110,
                  left: 130,
                  child: Text(
                    'USERNAME',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 30, top: 20),
              leading: Icon(
                Icons.home,
                color: Color.fromRGBO(7, 7, 7, 0).withOpacity(0.46),
                size: 40,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                    color: Color.fromRGBO(7, 7, 7, 0).withOpacity(0.46),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => AllBookScreen()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 30, top: 20),
              leading: Icon(
                Icons.payment,
                color: Color.fromRGBO(7, 7, 7, 0).withOpacity(0.46),
                size: 40,
              ),
              title: Text(
                'Orders',
                style: TextStyle(
                    color: Color.fromRGBO(7, 7, 7, 0).withOpacity(0.46),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrdersScreen()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 30, top: 20),
              leading: Icon(
                Icons.settings,
                color: Color.fromRGBO(7, 7, 7, 0).withOpacity(0.46),
                size: 40,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                    color: Color.fromRGBO(7, 7, 7, 0).withOpacity(0.46),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 30, top: 20),
              leading: Icon(
                Icons.exit_to_app,
                color: Color.fromRGBO(7, 7, 7, 0).withOpacity(0.46),
                size: 40,
              ),
              title: Text(
                'LogOut',
                style: TextStyle(
                    color: Color.fromRGBO(7, 7, 7, 0).withOpacity(0.46),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            Spacer(),
            Container(
              height: 130,
              width: 304,
              child: Image.asset(
                "assets/img1.PNG",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
