import 'package:flutter/material.dart';

import 'cart_screen.dart';
import 'favourites_screen.dart';

class BookDetailScreen extends StatefulWidget {
  @override
  _BookDetailScreenState createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  bool isFavourite = false;
  String tab = 'des';

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
            color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5), size: 1),
        centerTitle: true,
        /* title: Text(
          "ALL BOOKS",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),*/
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            iconSize: 30,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            iconSize: 30,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
          ),
        ],
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
                icon: Icon(Icons.favorite),
                elevation: 0,
                color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                label: Text(
                  "GO TO FAVOURITES",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FavouritesScreen()));
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8),
                  color: Colors.lightBlue,
                  height: 240,
                  width: 160,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TITLE',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Author',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 145,
                    ),
                    Row(
                      children: [
                        Text(
                          'Price:',
                          style: TextStyle(fontSize: 19, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          '\$44.3',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color:
                                Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Divider(
              height: 23,
              thickness: 1,
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    isFavourite ? Icons.favorite : Icons.favorite_border,
                    color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                  ),
                  iconSize: 35,
                  onPressed: () {
                    setState(() {
                      isFavourite = !isFavourite;
                    });
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 300,
                  height: 40,
                  //margin: EdgeInsets.only(bottom: 20),
                  //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: RaisedButton(
                    elevation: 0,
                    color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      "ADD TO CART",
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
            Divider(
              height: 15,
              color: Color.fromRGBO(234, 243, 250, 0).withOpacity(1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      tab = 'des';
                    });
                  },
                  child: Text(
                    'Description',
                    style: TextStyle(
                        color: tab == 'des'
                            ? Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5)
                            : Colors.grey[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      tab = 'fea';
                    });
                  },
                  child: Text(
                    'Features',
                    style: TextStyle(
                        color: tab == 'des'
                            ? Colors.grey[400]
                            : Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 190,
                    child: Divider(
                      color: tab == 'des'
                          ? Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5)
                          : Colors.grey[400],
                      thickness: tab == 'des' ? 4 : 2,
                    )),
                Container(
                    width: 190,
                    child: Divider(
                      color: tab == 'des'
                          ? Colors.grey[400]
                          : Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                      thickness: tab == 'des' ? 2 : 4,
                    )),
              ],
            ),
            tab=='des' ? Padding(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Erat nam at lectus urna duis convallis. Dignissim cras tincidunt lobortis feugiat vivamus at augue. Aliquam malesuada bibendum arcu vitae elementum curabitur. Scelerisque varius morbi enim nunc faucibus. Dui id ornare arcu odio ut sem nulla. Tempor commodo ullamcorper a lacus vestibulum sed arcu. Adipiscing diam donec adipiscing tristique risus nec feugiat. Massa sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ultrices gravida dictum fusce ut placerat orci nulla. Purus non enim praesent elementum facilisis leo. Mi bibendum neque egestas congue quisque egestas. Pulvinar mattis nunc sed blandit. Sed vulputate odio ut enim blandit volutpat.',
                style: TextStyle(fontSize: 20,color: Colors.black),
              ),
            ) : Table(),
          ],
        ),
      ),
    );
  }
}
