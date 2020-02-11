import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(new MaterialApp(
    title: "Web-View",
    home: new Web_View_Service(),
  ));
}

class Web_View_Service extends StatefulWidget {
  static String tag = 'webview service';

  _Web_View createState() => new _Web_View();
}

class _Web_View extends State<Web_View_Service>{
  Completer<WebViewController> _controller = Completer<WebViewController>();

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
                      child: Text("INFO KEPEGAWAIAN",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green[700]),textAlign: TextAlign.left,),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: WebView(
        initialUrl: 'http://bkpsdm.batukota.go.id/',
        onWebViewCreated: (WebViewController webViewController){
          _controller.complete(webViewController);
        },
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }



}