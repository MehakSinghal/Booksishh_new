import 'package:booksishh/widget/order_detail_item.dart';
import 'package:flutter/material.dart';

class OrderDetailScreen extends StatelessWidget {
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
          "ORDER ID",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
            child: Text('3 Items',style: TextStyle(fontSize: 12,color: Colors.white),),
          ),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(
        children: [
         OrderDetailItem(),
          Container(
            width: 390,
            height: 350,
            margin: EdgeInsets.only(top: 20,left: 15,right: 15),
            //padding: EdgeInsets.only(left: 10,right: 10,top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
          )
        ],
      ),
    );
  }
}
