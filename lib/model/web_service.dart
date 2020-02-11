import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(new MaterialApp(
    title: "Web-View",
    home: new Web_Service(),
  ));
}

class Web_Service extends StatefulWidget {
  static String tag = 'web service';

  _Web_View createState() => new _Web_View();
}

class _Web_View extends State<Web_Service>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView example'),
      ),
      body: const WebView(
        initialUrl: 'http://bkpsdm.batukota.go.id/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }



}