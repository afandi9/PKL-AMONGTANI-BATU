import 'package:among_tani/cuti_page.dart';
import 'package:among_tani/detailPage/detail_cuti.dart';
import 'package:among_tani/detailPage/detail_kenaikan_gaji.dart';
import 'package:among_tani/detailPage/detail_kenaikan_pangkat.dart';
import 'package:among_tani/detailPage/detail_tracking.dart';
import 'package:among_tani/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Layanan",
    home: new ServicePage(),
  ));
}

class ServicePage extends StatefulWidget {
  static String tag = 'ini layanan';

  _ServicePage createState() => new _ServicePage();
}

class _ServicePage extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.bottomLeft,
        colors: [Colors.greenAccent,Colors.white])),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.green.shade400,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                new InkWell(
                  onTap: ()=>(Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailCuti()))),
                  child: Container(height: 80,width: 120,
                    child: new Column(
                      children: <Widget>[
                    new Icon(Icons.flight_takeoff,size: 60,color: Colors.white,),
                    new Text("Pengajuan Cuti", style: TextStyle(color: Colors.white,fontSize: 15,),textAlign: TextAlign.center,),
                ],
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
                  new InkWell(
                    onTap: ()=>(Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailKenaikanPangkat()))),
                    child: Container(height: 80,width: 120,
                      child: new Column(
                        children: <Widget>[
                          new Icon(Icons.accessibility_new,size: 60,color: Colors.white,),
                          new Text("Kenaikan Pangkat", style: TextStyle(color: Colors.white,fontSize: 15,),textAlign: TextAlign.center,),
                        ],
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
                  new InkWell(
                    onTap: ()=>(Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailKenaikanGaji()))),
                    child: Container(height: 80,width: 120,
                      child: new Column(
                        children: <Widget>[
                          new Icon(Icons.trending_up,size: 60,color: Colors.white,),
                          new Text("Kenaikan Gaji", style: TextStyle(color: Colors.white,fontSize: 15,),textAlign: TextAlign.center,),
                        ],
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
                  new InkWell(
                    onTap: ()=>(Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailTracking()))),
                    child: Container(height: 80,width: 120,
                      child: new Column(
                        children: <Widget>[
                          new Icon(Icons.navigation,size: 60,color: Colors.white,),
                          new Text("Tracking Process", style: TextStyle(color: Colors.white,fontSize: 15,),textAlign: TextAlign.center,),
                        ],
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
    );
  }
}
