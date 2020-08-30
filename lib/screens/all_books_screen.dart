import 'package:booksishh/screens/favourites_screen.dart';
import 'package:flutter/material.dart';
import '../widget/appDrawer.dart';
import '../widget/bookItem.dart';

class AllBookScreen extends StatelessWidget {
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
          "ALL BOOKS",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: AppDrawer(),
      body:GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 390,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            childAspectRatio: 1/1.5,
          ),
          itemBuilder: (ctx, i) => BookItem(),
          itemCount: 6,
        ),
      bottomNavigationBar: Container(
        height: 90,
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 180,
              height: 60,
              //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: RaisedButton(
                elevation: 0,
                color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  "ALL",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              width: 180,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: RaisedButton(
                elevation: 0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  "FAVOURITES",
                  style: TextStyle(
                      color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder : (context)=> FavouritesScreen()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
