import 'package:among_tani/model/inbox_model.dart';
import 'package:flutter/material.dart';

class InboxDetail extends StatelessWidget{
  final Inbox inbox;
  InboxDetail({Key key, this.inbox}) : super(key: key);

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Image.asset('assets/logo.png', fit: BoxFit.contain, height: 40,alignment: Alignment.centerLeft,),
                    ),
                    Expanded(
                      child: Text('INBOX',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green[700]),textAlign: TextAlign.center,),
                    ),
                    Expanded(
                      child: Icon(Icons.home, color: Colors.transparent),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Text(inbox.content),
      ),
    );
  }}