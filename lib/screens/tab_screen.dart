import 'package:booksishh/screens/add_product_screen.dart';
import 'package:booksishh/screens/profile_screen.dart';
import 'package:booksishh/screens/seller_dashboard.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Map<String, Object>> _pages;

  void initState() {
    _pages = [
      {'pages': SellerDashboard(), 'title': 'YOUR PRODUCT'},
      {'pages': AddProductScreen(), 'title': 'ADD PRODUCT'},
      {'pages': ProfileScreen(), 'title': 'YOUR PROFILE'},
    ];
    super.initState();
  }
  var _selectedPageIndex =0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 243, 250, 0).withOpacity(1),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          _pages[_selectedPageIndex]['title'],
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(18),
              right: Radius.circular(18),
            )),
        toolbarHeight: 75,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
            color: _selectedPageIndex==2 ? Colors.white : Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5), size: 1),
        actions: [
          IconButton(
            icon: _selectedPageIndex==0 ? Icon(
              Icons.search,
            ): _selectedPageIndex==1 ? Icon(
              Icons.save,
            ) : Icon(
              Icons.search,
            ),
            iconSize: 30,
            onPressed: () {},
          ),
        ],
      ),
      body: _pages[_selectedPageIndex]['pages'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        selectedItemColor: Color.fromRGBO(230,64,92,0).withOpacity(0.5),
        unselectedItemColor: Color.fromRGBO(7,7,7,0).withOpacity(0.46),
        //type: BottomNavigationBarType.shifting,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text('Add'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
