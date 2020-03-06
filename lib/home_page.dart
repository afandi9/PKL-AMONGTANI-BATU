import 'dart:io';
import 'package:among_tani/about_page.dart';
import 'package:among_tani/contracts/home_contract.dart';
import 'package:among_tani/fragmentPage/home_fragment.dart';
import 'package:among_tani/fragmentPage/inbox_page.dart';
import 'package:among_tani/login_page.dart';
import 'package:among_tani/presenters/home_presenter.dart';
import 'package:flutter/material.dart';
import 'package:among_tani/fragmentPage/service_page.dart';
import 'package:among_tani/model/post.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

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


class _BottomNavPageState extends State<HomePage> implements HomeView {
  HomePresenter presenter;
  List<Post> posts = new List();

  @override
  void initState() {
      isNotLoggedIn().then((it){
        if(it){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
        }
        return;
      });
      presenter = HomePresenter(this);
      super.initState();
  }

  Future<bool> isNotLoggedIn() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = (prefs.getString('token')??"undefined");
    return (token == null || token == "undefined");
  }

  void _logout() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  @override
  void toast(String message) => Toast.show(message, context);

  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Exit?'),
            content: Text('Apakah anda yakin ingin keluar?'),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              FlatButton(
                onPressed: () => exit(0),
                /*Navigator.of(context).pop(true)*/
                child: Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }

  int _selectTabIndex = 0;
  String _title = 'HOME';

  void _onNavBarTapped(int index) {
    setState(() {
      _selectTabIndex = index;
      if (index == 0) {
        _title = 'HOME';
      }
      if (index == 1) {
        _title = 'INBOX';
      }
      if (index == 2) {
        _title = 'LAYANAN';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      HomeFragment(),
      InboxPage(),
      ServicePage(),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.mail_outline), title: Text('Inbox')),
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

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(null, 50),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.green, Colors.white],
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 5, blurRadius: 2)
                ]),
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
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
                        child: Image.asset(
                          'assets/logo.png',
                          fit: BoxFit.contain,
                          height: 40,
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          _title,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[700]),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: PopupMenuButton<int>(
                          icon: Icon(Icons.more_vert, color: Colors.green[700],),
                          padding: EdgeInsets.only(left: 80),
                          onSelected: (int results) {
                            if (results == 1){
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => AboutPage()
                                ));
                            }
                            if (results == 2){
                                _logout();
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginPage()), (r) =>false);
//                              Navigator.of(context).push(MaterialPageRoute(
//                                  builder: (BuildContext context) => LoginPage()
//                              ));
                            }
                          },
                          itemBuilder: (context) => [
                            PopupMenuItem(value: 1, child: Text('Tentang'),),
                            PopupMenuItem(value: 2, child: Text('Logout'),)
                          ],
                        ),
//                        child: Icon(Icons.home, color: Colors.transparent),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Center(
            child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.greenAccent, Colors.white])),
          child: Center(child: _listPage[_selectTabIndex]),
        )),
        bottomNavigationBar: _bottomNavBar,
      ),
    );
  }
}
