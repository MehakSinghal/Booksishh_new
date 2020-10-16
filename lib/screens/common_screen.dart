import 'package:booksishh/screens/all_books_screen.dart';
import 'package:booksishh/screens/customer_login.dart';
import 'package:booksishh/screens/seller_dashboard.dart';
import 'package:booksishh/screens/tab_screen.dart';
import 'package:flutter/material.dart';

class CommonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(234, 243, 250, 0).withOpacity(1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 250,
              ),
              Stack(
                children: [
                  Container(
                    height: 400,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(20)),
                      color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 80,
                    child: Container(
                      height: 130,
                      width: 130,
                      //color: Colors.black,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/seller.PNG',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 250,
                    child: Container(
                      width: 160,
                      height: 40,
                      child: RaisedButton(
                        elevation: 3,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          "SELLER",
                          style: TextStyle(
                              color: Color.fromRGBO(230, 64, 92, 0)
                                  .withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TabScreen()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 350,
              ),
              Stack(
                children: [
                  Container(
                    height: 400,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(20)),
                      color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 80,
                    child: Container(
                      height: 130,
                      width: 130,
                      //color: Colors.black,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/customer.PNG',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 250,
                    child: Container(
                      width: 160,
                      height: 40,
                      child: RaisedButton(
                        elevation: 3,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                          child: Text(
                            "CUSTOMER",
                            style: TextStyle(
                                color: Color.fromRGBO(230, 64, 92, 0)
                                    .withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AllBookScreen()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
