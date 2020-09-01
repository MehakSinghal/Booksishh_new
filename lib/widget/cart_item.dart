import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int x=0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 210,
        //margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              height: 210,
              width: 135,
              child: Image.network(
                "https://images.loksatta.com/2019/12/Book.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 5),
                    width: 220,
                    //color: Colors.yellow,
                    child: Text(
                      'TITLE',
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                      softWrap: true,
                    )),
                Spacer(),
                Row(
                  children: [
                    Text(
                      '  \$5.4',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color:
                              Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 80),
                      padding: EdgeInsets.all(3),
                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          color: Colors.grey[350]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap:(){
                              setState(() {
                                x--;
                              });
                            },
                            child: Container(
                              height: 32,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(20))),
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                          ),
                          Text(
                            x<0 ? 0.toString() : x.toString(),
                            style: TextStyle(fontSize: 20),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                x++;
                              });
                            },
                            child: Container(
                              height: 32,
                              width: 25,
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(20))),
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
