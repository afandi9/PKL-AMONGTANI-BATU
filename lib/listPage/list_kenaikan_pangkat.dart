import 'package:flutter/material.dart';

class DetailKenaikanPangkat extends StatelessWidget {

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
//                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: IconButton(icon: Icon(Icons.arrow_back),onPressed: () => Navigator.pop(context, false),alignment: Alignment.centerLeft,color: Colors.green[700],),
                    ),
                    Expanded(
                      child: Text("KENAIKAN PANGKAT BERIKUTNYA",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green[700]),textAlign: TextAlign.left,),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: Material(
                elevation: 2.0,
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 5, bottom: 8),
                              child: Text(
                                'Jabatan',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Nama Jabatan',
                                    style: TextStyle(
                                        color: Colors.grey[600]
                                    ),
                                  ),
                                  Text('Perancang Sistem Informasi Kepegawaian')
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Jenis Jabatan',
                                    style: TextStyle(
                                        color: Colors.grey[600]
                                    ),
                                  ),
                                  Text('Pelaksana')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: <Widget>[
                                  Text('TMT',
                                    style: TextStyle(
                                      color: Colors.grey[600]
                                    ),
                                  ),
                                  Text('03-01-2017')
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Eselon',
                                    style: TextStyle(
                                        color: Colors.grey[600]
                                    ),
                                  ),
                                  Text('-')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10,0,10,10),
              child: Material(
                elevation: 2.0,
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 5, bottom: 8),
                              child: Text(
                                'KP Terakhir',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Pangkat/Gol. Ruang',
                                    style: TextStyle(
                                        color: Colors.grey[600]
                                    ),
                                  ),
                                  Text('Penata Muda TK I (III/b)')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: <Widget>[
                                  Text('TMT',
                                    style: TextStyle(
                                        color: Colors.grey[600]
                                    ),
                                  ),
                                  Text('01-04-2009')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10,0,10,10),
              child: Material(
                elevation: 2.0,
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 5, bottom: 8),
                              child: Text(
                                'KP Berikutnya',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Pangkat/Gol. Ruang',
                                    style: TextStyle(
                                        color: Colors.grey[600]
                                    ),
                                  ),
                                  Text('Penata (III/c)')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: <Widget>[
                                  Text('TMT',
                                    style: TextStyle(
                                        color: Colors.grey[600]
                                    ),
                                  ),
                                  Text('01-04-2023')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Material(
                color: Colors.white70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 10,top: 10),
                      child: Icon(Icons.info, color: Colors.green,),
                    ),
                    Expanded(
                     child: Container(
                       padding: EdgeInsets.all(10),
                       child: Text(
                         'Catatan: Perhitungan KP Berikutnya ini berdasarkan KP Reguler (4 Tahunan). Untuk Jabatan Fungsional menyesuaikan dengan angka kredit yang diperoleh.',
                         style: TextStyle(color: Colors.grey[600]),
                         textAlign: TextAlign.justify,
                       )
                     ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}