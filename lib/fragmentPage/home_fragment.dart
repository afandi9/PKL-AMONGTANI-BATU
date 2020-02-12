import 'package:among_tani/detailPage/kepegawaian_detail.dart';
import 'package:among_tani/detailPage/webview.dart';
import 'package:flutter/material.dart';

class HomeFragment extends StatefulWidget {
  static String tag = 'home_fragment';

  @override
  _HomeFragment createState() => new _HomeFragment();
}

class _HomeFragment extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/batu7.JPG",
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 300, 20, 0),
                child: Container(
                  height: 380,
                  width: MediaQuery.of(context).size.width,
                  child: Material(
                    elevation: 2.0,
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10.0),
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.fromLTRB(10,50,10,30),
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.pink.shade400,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: new InkWell(
//                                  onTap: ()=>(Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Web_View_Service()))),
                                  child: Container(height: 80,width: 120,
                                    child: new Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Icon(Icons.timeline,size: 60,color: Colors.white,),
                                        new Text("Aktivitas", style: TextStyle(color: Colors.white,fontSize: 15,),textAlign: TextAlign.center,),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),


                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.green.shade400,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: new InkWell(
//                                  onTap: ()=>(Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailKenaikanPangkat()))),
                                  child: Container(height: 80,width: 120,
                                    child: new Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Icon(Icons.fingerprint,size: 60,color: Colors.white,),
                                        new Text("Absensi", style: TextStyle(color: Colors.white,fontSize: 15,),textAlign: TextAlign.center,),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.blue.shade400,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: new InkWell(
                                  onTap: ()=>(Navigator.of(context).push(MaterialPageRoute(builder: (context)=>KepegawaianDetail()))),
                                  child: Container(height: 80,width: 120,
                                    child: new Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Icon(Icons.work,size: 60,color: Colors.white,),
                                        new Text("Kepegawaian", style: TextStyle(color: Colors.white,fontSize: 15,),textAlign: TextAlign.center,),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.yellow.shade400,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: new InkWell(
                                  onTap: ()=>(Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WebView_Service()))),
                                  child: Container(height: 80,width: 120,
                                    child: new Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Icon(Icons.info,size: 60,color: Colors.white,),
                                        new Text("Info Kepegawaian", style: TextStyle(color: Colors.white,fontSize: 15,),textAlign: TextAlign.center,),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 185, 20, 0),
                child: Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  child: Material(
                    elevation: 2.0,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(19.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25,top: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                child: Image.asset('assets/logo.png'),
                              ),
                              new Expanded(
                                child: new Padding(
                                  padding: const EdgeInsets.fromLTRB(8,5,0,5),
                                  child: new Text('Nama : Imam Haris Afandi\n\n'+'NIP     : 12345678'),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140),
                child: Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.green,
                      child: Image.asset('assets/logo.png',alignment: Alignment.center,),
                    ),
                 ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
