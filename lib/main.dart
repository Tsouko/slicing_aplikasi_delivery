import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:starbhak/Widget/NavbarWidget.dart';
import 'package:starbhak/pages/HomePage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = 'https://lbxdlkyowiceoajvmftj.supabase.co';
  const supabaseKey =
     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxieGRsa3lvd2ljZW9hanZtZnRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA5NjUyODQsImV4cCI6MjA0NjU0MTI4NH0.Ne55AbMjg07CwyTubdcq4ryQP0F7Z5H_iZ0dIgXktEc';
Future<void> main() async {
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
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
        "/": (context) => NavbarWidget(),
      },
    );
  }
}
