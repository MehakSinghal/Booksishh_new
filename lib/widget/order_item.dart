import 'package:booksishh/screens/order_detail_screen.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 100,
      margin: EdgeInsets.only(top: 15,left: 15,right: 15),
      padding: EdgeInsets.only(left: 10,right: 10,top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              Text('Order Id',style: TextStyle(fontSize: 18),),
              Spacer(),
              Text('\$34.56',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Text('3 Items',style: TextStyle(fontSize: 18),),
              Spacer(),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                color: Color.fromRGBO(230,64,92,0).withOpacity(0.5),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailScreen()));
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
