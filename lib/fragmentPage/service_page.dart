

import 'package:among_tani/listPage/list_cuti.dart';
import 'package:among_tani/listPage/list_kenaikan_gaji.dart';
import 'package:among_tani/listPage/list_kenaikan_pangkat.dart';
import 'package:among_tani/listPage/list_tracking.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _ServicePage createState() => _ServicePage();
}

class _ServicePage extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ServicePage(),
    );
  }
}

// ignore: must_be_immutable
class ServicePage extends StatelessWidget {
  static String tag = 'ini layanan';
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              child: CustomPaint(
                painter: ShapesPainter(),
                child: Container(
                  height: size.height / 2,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    createGridItem(0),
                    createGridItem(1),
                    createGridItem(2),
                    createGridItem(3),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget createGridItem(int position) {
    var color = Colors.white;
    var icondata = Icons.add;
    var text;
    var intent;

    switch (position) {
      case 0:
        color = Colors.cyan;
        icondata = Icons.flight_takeoff;
        text = 'Pengajuan Cuti';
        break;
      case 1:
        color = Colors.deepPurple;
        icondata = Icons.accessibility_new;
        text = 'Kenaikan Pangkat';
        break;
      case 2:
        color = Colors.orange[300];
        icondata = Icons.trending_up;
        text = 'Kenaikan Gaji';
        break;
      case 3:
        color = Colors.pinkAccent;
        icondata = Icons.navigation;
        text = 'Tracking Process';
        break;
    }

    return Builder(builder: (context) {
      return Padding(
        padding:
        const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
        child: Card(
          elevation: 10,
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            side: BorderSide(color: Colors.white),
          ),
          child: InkWell(
            onTap: () {
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text("Selected Item $position")));
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    icondata,
                    size: 50,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text,style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the paint color to be white
    paint.color = Colors.white;
    // Create a rectangle with size and width same as the canvas
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    // draw the rectangle using the paint
    canvas.drawRect(rect, paint);
    paint.color = Colors.greenAccent[400];
    // create a path
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    // close the path to form a bounded shape
    path.close();
    canvas.drawPath(path, paint);
    /* // set the color property of the paint
    paint.color = Colors.deepOrange;
    // center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 2, size.height / 2);
    // draw the circle with center having radius 75.0
    canvas.drawCircle(center, 75.0, paint);*/
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
