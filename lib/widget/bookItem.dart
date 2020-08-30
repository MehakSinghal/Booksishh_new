import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 150,
      //color: Colors.black,
      child: Column(
        children: [
          Container(
            height: 160,
            width: 170,
            decoration: BoxDecoration(
                //color: Colors.grey,
                borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
            child: ClipRRect(
              child: Image.network(
                "https://images.loksatta.com/2019/12/Book.jpg",
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            ),
          ),
          Container(
            height: 100,
            width: 170,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "TITLE",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text(
                  "\$ 44.5",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
