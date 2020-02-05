

import 'package:among_tani/inbox_page.dart';
import 'package:among_tani/service_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    ServicePage.tag: (context) => ServicePage(),
    InboxPage.tag: (context) => InboxPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Among Abdi Praja',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
