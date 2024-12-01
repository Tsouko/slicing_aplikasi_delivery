import 'package:flutter/material.dart';
import 'package:starbhak/Pages/CartPages.dart';
import 'package:starbhak/Pages/HomePage.dart';
import 'package:starbhak/Pages/AddPages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbhak Mart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavbarWidget(),
    );
  }
}

class NavbarWidget extends StatefulWidget {
  @override
  _NavbarWidgetState createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  int _currentIndex = 0;
  bool _isNavBarVisible = true;

  final List<Widget> _pages = [
    Homepage(),
    CartPage(),
    Addpage(),
  ];

  void onBarTapped(int index) {
    setState(() {
      _currentIndex = index;
      _isNavBarVisible = index != 2; 
    });
  }

  Future<bool> _onWillPop() async {
    if (_currentIndex != 0) {
      setState(() {
        _currentIndex = 0; 
        _isNavBarVisible = true;
      });
      return false; 
    }
    return true; 
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: _isNavBarVisible
            ? BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: onBarTapped,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.post_add),
                    label: 'Pesanan',
                  ),
                ],
              )
            : null,
      ),
    );
  }
}
