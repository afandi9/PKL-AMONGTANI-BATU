import 'package:flutter/material.dart';
import 'package:among_tani/model/cardview_model.dart';
import 'package:http/http.dart';

void main() {
  runApp(new MaterialApp(
    title: "detail aktivitas",
    home: new detailAktivitas(),
  ));
}

class detailAktivitas extends StatefulWidget {
  _detailAktivitas createState() => new _detailAktivitas();
}

class _detailAktivitas extends State<detailAktivitas> {
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
      body:
          GenericCard(
            date: 'Jumat, 06 Maret 2019',
            title: 'Kegiatan :',
            subtitle: 'Update Data Pegawai',
            catatan: 'Catatan :',
            body: 'Sinkronisasi data kepegawaian.',
            output: '100 pegawai',
          ),
        );


  }
}

//List getCard(){
//  return[
//    GenericCard(
//      date: 'Jumat, 06 Maret 2019',
//      title: 'Kegiatan :',
//      subtitle: 'Update Data Pegawai',
//      catatan: 'Catatan :',
//      body: 'Sinkronisasi data kepegawaian.',
//      output: '100 pegawai',
//    ),
//    GenericCard(
//      date: 'Jumat, 06 Maret 2019',
//      title: 'Kegiatan :',
//      subtitle: 'Update Data Pegawai',
//      catatan: 'Catatan :',
//      body: 'Sinkronisasi data kepegawaian.',
//      output: '100 pegawai',
//    ),
//  ];
//}
