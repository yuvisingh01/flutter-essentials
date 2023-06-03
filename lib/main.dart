import 'package:flutter/material.dart';
import 'package:flutter_essentials/pages/homePage.dart';
import 'package:flutter_essentials/pages/login.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch:Colors.purple,
      ),
      routes: {
        LoginPage.routeName:(context)=>LoginPage(),
        HomePage.routeName:(context)=>HomePage(),
      },
    );
  }
}
