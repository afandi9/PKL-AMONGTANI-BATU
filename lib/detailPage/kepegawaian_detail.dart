import 'package:among_tani/data_detail_kepegawaian/detail_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:among_tani/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class KepegawaianDetail extends StatefulWidget {
  @override
  _KepDetail createState() => new _KepDetail();
}
class _KepDetail extends State<KepegawaianDetail> {
  User userLoad = User();
  @override
  void initState() {
    loadSP();
    super.initState();
  }

  loadSP() async{
    try {
      final prefs = await SharedPreferences.getInstance();
      User user = User.fromJson(await json.decode(prefs.getString("user")));
      setState(() {
        userLoad = user;
      });
    }catch(Exeption){

    }
  }
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
                        'DATA KEPEGAWAIAN',
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
      body: SingleChildScrollView(
        child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.green, Colors.white],
                ),
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    //DETAIL UMUM
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: new Border.all(
                            width: 1.0,
                            color: Colors.green[700],
                          ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(right: 25),
                                  child: Image.asset(
                                    'assets/logo.png',
                                    height: 80,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        userLoad.nama_pegawai,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'NIP: '+userLoad.nip,
                                        textAlign: TextAlign.left,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(35, 10, 10, 0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Icon(
                                    Icons.info,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Tempat Tgl. Lahir',
                                        style: TextStyle(color: Colors.grey),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        userLoad.tgl_lahir,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(35, 10, 10, 0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Icon(
                                    Icons.business_center,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Jabatan',
                                        style: TextStyle(color: Colors.grey),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        userLoad.jabatan,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(35, 10, 10, 0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Icon(
                                    Icons.stars,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Pangkat/Gol. Ruang',
                                        style: TextStyle(color: Colors.grey),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        userLoad.pangkat_akhir+' / '+userLoad.gol_akhir,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //DETAIL CIRCLE AVATAR
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: new InkWell(
                                    onTap: ()=>(Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(detailData())))),
                                    child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor: Colors.green,
                                          child: Icon(Icons.assignment,color: Colors.white,size: 40,),
                                        ),
                                      ),
                                      Text('Data')
                                    ],
                                  ),
                                ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor: Colors.yellow,
                                          child: Icon(Icons.people,color: Colors.white,size: 40,),
                                        ),
                                      ),
                                      Text('Keluarga')
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor: Colors.purple,
                                          child: Icon(Icons.school,color: Colors.white,size: 40,),
                                        ),
                                      ),
                                      Text('Pendidikan')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor: Colors.blue,
                                          child: Icon(Icons.stars,color: Colors.white,size: 40,),
                                        ),
                                      ),
                                      Text('Pangkat')
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor: Colors.green[700],
                                          child: Icon(Icons.business_center,color: Colors.white,size: 40,),
                                        ),
                                      ),
                                      Text('Jabatan')
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor: Colors.greenAccent,
                                          child: Icon(Icons.description,color: Colors.white,size: 40,),
                                        ),
                                      ),
                                      Text('Diklat')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )),
      )
    );
  }
}
