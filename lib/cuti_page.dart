
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "cuti",
    home: new CutiPage(),
  ));
}

class CutiPage extends StatefulWidget {
  static String tag = 'ini cuti';

  _CutiPage createState() => new _CutiPage();
}

class _CutiPage extends State<CutiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("Pengajuan Cuti"),
),

    );
  }
}