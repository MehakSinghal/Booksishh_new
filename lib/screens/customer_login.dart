import 'package:flutter/material.dart';

class CustomerLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 243, 250, 0).withOpacity(1),
      appBar: AppBar(
        toolbarHeight: 100,
        title:Text(
            'CUSTOMER ',
            style: TextStyle(fontSize: 30,color: Colors.black),
          ),
      ),
    );
  }
}
