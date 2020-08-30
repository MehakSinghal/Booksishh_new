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
       // primarySwatch: Color.fromRGBO(230,64,92,0).withOpacity(0.5),
        //backgroundColor: Color.fromRGBO(234,243,250,0).withOpacity(1),
      ),
      home: AllBookScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
