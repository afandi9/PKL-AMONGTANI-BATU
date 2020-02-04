import 'package:among_tani/main.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';

void main(){
  runApp(
      new MaterialApp(
        title: "Layanan",
        home: new ServicePage(),
      )
  );
}

class ServicePage extends StatefulWidget{
  static String tag = 'ini layanan';
  _ServicePage createState() => new _ServicePage();
}
class _ServicePage extends State<ServicePage>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: new Text("Layanan"),
      ),

      backgroundColor: Colors.white,
      body: Center(
        child: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      crossAxisCount: 2,
      mainAxisSpacing: 10,

      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("Ajukan Cuti",textAlign: TextAlign.center),
          color: Colors.green,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("Kenaikan Pangkat",textAlign: TextAlign.center,),
          color: Colors.green,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("Kenaikan Gaji",textAlign: TextAlign.center),
          color: Colors.green,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("Tracking Process",textAlign: TextAlign.center),
          color: Colors.green,
        )
      ],),
    ),
    );
  }
}