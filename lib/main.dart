import 'package:flutter/material.dart';
import 'package:flutter_facegram/home/home_page.dart';
import 'package:flutter_facegram/profile/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facegram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return index == 0 ? HomePage() : ProfilePage();
        },
        itemCount: 2,
      ),
    );
  }
}
