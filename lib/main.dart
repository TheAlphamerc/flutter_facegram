import 'package:flutter/material.dart';
import 'package:flutter_facegram/home/home_page.dart';
import 'package:flutter_facegram/profile/profile_page.dart';
import 'package:flutter_facegram/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.darkThemeEnabled,
      initialData: true,
      builder: (context, snapshot) {
        return MaterialApp(
          title: 'Facegram',
          theme: snapshot.data ? AppTheme.darkTheme : AppTheme.lightTheme,
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          //   visualDensity: VisualDensity.adaptivePlatformDensity,
          // ),
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
    );
  }
}

final bloc = Bloc();