import 'package:booksishh/widget/cart_item.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 243, 250, 0).withOpacity(1),
      appBar:AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(18),
              right: Radius.circular(18),
            )),
        title: Text('CART', style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
        toolbarHeight: 75,
        iconTheme: IconThemeData(
            color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5), size: 1),
        actions: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
            child: Text('2',style: TextStyle(fontSize: 23,color: Colors.white),),
          ),
          SizedBox(width: 20,)
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(left: 10,right: 10,top: 15),
        itemCount: 4,
        itemBuilder: (ctx,i)=> CartItem(),
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 380,
              height: 65,
              //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: RaisedButton(
                elevation: 0,
                color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  "CHECKOUT   |   \$43.21",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
