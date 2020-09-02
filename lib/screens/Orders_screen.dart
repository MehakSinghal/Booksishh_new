import 'package:booksishh/widget/order_item.dart';
import 'package:flutter/material.dart';

import 'all_books_screen.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 243, 250, 0).withOpacity(1),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
          left: Radius.circular(18),
          right: Radius.circular(18),
        )),
        toolbarHeight: 75,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
            color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5)),
        centerTitle: true,
        title: Text(
          "ORDERS",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 400,
              height: 60,
              //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: RaisedButton.icon(
                icon: Icon(Icons.home),
                elevation: 0,
                color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                label: Text(
                  "GO TO HOME",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AllBookScreen()));
                },
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (ctx, i) => OrderItem(),
      ),
    );
  }
}
