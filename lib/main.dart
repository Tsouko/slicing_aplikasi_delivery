import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:starbhak/Widget/NavbarWidget.dart';
import 'package:starbhak/pages/HomePage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Starbhak Mart",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      routes: {
        "/": (context) => Navbarwidget(),
      },
    );
  }
}
