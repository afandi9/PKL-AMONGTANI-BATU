import 'package:among_tani/model/inbox_model.dart';
import 'package:flutter/material.dart';

class InboxDetail extends StatelessWidget{
  final Inbox inbox;
  InboxDetail({Key key, this.inbox}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool buttonDown = inbox.download;

    Widget setButton(bool setBool){
      if (setBool == true){
        return RaisedButton(
          onPressed: null,
          color: Colors.teal[700],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          child: Text('Download',style: TextStyle(color: Colors.white),),
        );
      }else{
       return Container();
      }
    }

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
                      child: Text(inbox.title.toUpperCase(),style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green[700]),textAlign: TextAlign.left,),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(10),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: new Border.all(
                        width: 1.0, color: Colors.green[700],
                      )
                  ),
                  child: Text(inbox.content,textAlign: TextAlign.justify,),),
                setButton(buttonDown),
//                RaisedButton(
//                  onPressed: null,
//                  color: Colors.teal[700],
//                  shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(3),
//                  ),
//                  child: Text('Download',style: TextStyle(color: Colors.white),),
//                ),
              ],
            ),


          ),
        )
      ),
    );
  }}