import 'package:booksishh/screens/common_screen.dart';
import 'package:booksishh/screens/seller_dashboard.dart';
import 'package:booksishh/screens/tab_screen.dart';

import 'screens/all_books_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.white,
        ),
       // primarySwatch: Color.fromRGBO(230,64,92,0).withOpacity(0.5),   pink
        //backgroundColor: Color.fromRGBO(234,243,250,0).withOpacity(1),  blue
        // Color.fromRGBO(7,7,7,0).withOpacity(0.46),  grey
      ),
      home: TabScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
