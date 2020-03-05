import 'package:flutter/material.dart';

class AktivitasDetail extends StatefulWidget {

  @override
  _AktivitasDetailState createState() => new _AktivitasDetailState();
}

class _AktivitasDetailState extends State<AktivitasDetail> {

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
              colors: [Colors.green, Colors.white],
            ),
            boxShadow: [
              BoxShadow(color: Colors.black12, spreadRadius: 5, blurRadius: 2)
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () => Navigator.pop(context, false),
                          alignment: Alignment.centerLeft,
                          color: Colors.green[700],
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'AKTIVITAS',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[700]),
                            textAlign: TextAlign.left,
                        ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }

}