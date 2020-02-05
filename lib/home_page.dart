

import 'package:among_tani/inbox_page.dart';
import 'package:flutter/material.dart';
import 'package:among_tani/service_page.dart';

void main() {
  runApp(new MaterialApp(
    title: "Among tani",
    home: new HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  static String tag = 'BottomNavPage';
  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State{
  int _selectTabIndex = 0;
  String _title = 'HOME';

  void _onNavBarTapped(int index){
    setState(() {
      _selectTabIndex = index;
      if (index == 0){
        _title = 'HOME';
      }
      if (index == 1){
        _title = 'INBOX';
      }
      if (index == 2){
        _title = 'LAYANAN';
      }
    });
  }

  @override
  Widget build(BuildContext context){
    final _listPage = <Widget>[
//      Text('Halaman Home'),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40),
            CircleAvatar(
              radius: 50,
              child: Image.asset('assets/logo.png'),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Nama : Imam Haris Afandi'),
                  SizedBox(height: 10),
                  Text('NIP     : 12345678')
                ],
              ),
            ),
            ],
        ),
      ),
//      Container(child: Text('Halaman Inbox'),),
    InboxPage(),
      ServicePage(),
      //Container(child: Text('Halaman Layanan'),),
//      Text('Halaman Inbox'),
//      Text('Halaman Layanan'),
    ];


    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.mail_outline),
          title: Text('Inbox')
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.dvr),
        title: Text('Layanan'),
      ),
    ];

    final _bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectTabIndex,
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.grey,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(null, 50),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 5,
                  blurRadius: 2
              )]
          ),
          width: MediaQuery.of(context).size.width,
          height: 80,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)
            ),
            child: Container(
              color: Colors.white70,
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 25, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Image.asset('assets/logo.png', fit: BoxFit.contain, height: 40,alignment: Alignment.centerLeft,),
                    ),
                    Expanded(
                      child: Text(_title,style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green[700]),textAlign: TextAlign.center,),
                    ),
                    Expanded(
                      child: Icon(Icons.home, color: Colors.transparent),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
          child: _listPage[_selectTabIndex]
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}