import 'package:booksishh/provider/product.dart';
import 'package:booksishh/screens/common_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Product(),
        ),
      ],
      child: MaterialApp(
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
        home: CommonScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
