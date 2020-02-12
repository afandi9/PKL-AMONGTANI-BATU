import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "cuti",
    home: new AboutPage(),
  ));
}

class AboutPage extends StatefulWidget {
  static String tag = 'ini cuti';

  _CutiPage createState() => new _CutiPage();
}

class _CutiPage extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(null, 50),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.bottomLeft,
                colors: [Colors.green,Colors.white],
              ),
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
              bottomRight: Radius.circular(15),
            ),
            child: Container(
              color: Colors.white70,
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 25, 10, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: IconButton(icon: Icon(Icons.arrow_back),onPressed: () => Navigator.pop(context, false),alignment: Alignment.centerLeft,color: Colors.green[700],),
                    ),
                    Expanded(
                      child: Text("TENTANG",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green[700]),textAlign: TextAlign.center,),
                    ),
                    Container(
                      child: Icon(Icons.home,color: Colors.transparent,),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Text('Dibangun Oleh Kami Bertiga',
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
      ),
    );
  }
}