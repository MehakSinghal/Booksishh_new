import 'package:flutter/material.dart';

class SellerDashboard extends StatefulWidget {
  @override
  _SellerDashboardState createState() => _SellerDashboardState();
}

class _SellerDashboardState extends State<SellerDashboard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (i, ctx) => Container(
        height: 130,
        width: 330,
        margin: EdgeInsets.only(top: 15, right: 15, left: 15),
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 110,
              width: 100,
              margin: EdgeInsets.only(right: 12),
              color: Colors.yellow,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TITLE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                Spacer(),
                Row(
                    children: [
                      SizedBox(width: 153,),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Color.fromRGBO(7, 7, 7, 0).withOpacity(0.46),
                        ),
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: (){},
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
      itemCount: 3,
    );
  }
}
