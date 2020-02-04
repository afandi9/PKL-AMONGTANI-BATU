import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String tag = 'BottomNavPage';
  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<HomePage>{
  int _selectTabIndex = 0;

  void _onNavBarTapped(int index){
    setState(() {
      _selectTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    final _listPage = <Widget>[
      Text('Halaman Home'),
      Text('Halaman Inbox'),
      Text('Halaman Layanan'),
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
      selectedItemColor: Colors.green,
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
                      child: Text("AMONG ABDI",style: TextStyle(fontSize: 15,color: Colors.green),textAlign: TextAlign.center,),
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
        child: _listPage[_selectTabIndex],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}