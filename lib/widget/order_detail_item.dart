import 'package:flutter/material.dart';

class OrderDetailItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 350,
      margin: EdgeInsets.only(top: 15, left: 15, right: 15),
      padding: EdgeInsets.only(left: 12, right: 12, top: 14,bottom: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Order Id',
                style: TextStyle(fontSize: 20),
              ),
              Spacer(),
              Text(
                '\$34.56',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            '3 Items',
            style: TextStyle(fontSize: 18),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (ctx, i) => Row(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    margin: EdgeInsets.only(top: 12,left: 8),
                    child: Image.network('https://images.loksatta.com/2019/12/Book.jpg',fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Text('Title',style: TextStyle(color: Colors.grey,fontSize: 22),),
                        SizedBox(width: 160,),
                        Text('\$5.3',style: TextStyle(color: Colors.grey,fontSize: 22),),
                      ],),
                      SizedBox(height: 15,),
                      Text('Quantity:2',style: TextStyle(color: Colors.grey,fontSize: 18),),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
