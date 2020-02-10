import 'package:among_tani/detailPage/inbox_detail.dart';
import 'package:among_tani/model/inbox_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "inbox",
    home: new InboxPage(),
  ));
}

class InboxPage extends StatefulWidget {
  static String tag = 'inbox page';

  @override
  _InboxPage createState() => new _InboxPage();
}

class _InboxPage extends State<InboxPage> {
  List inbox;

  @override
  void initState() {
    inbox = getInbox();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Inbox inbox) => ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
          border: new Border(
            right: new BorderSide(width: 1.0, color: Colors.green[700])
          )
        ),
        child: CircleAvatar(
          radius: 20,
          child: Image.asset('assets/logo.png'),
        ),
      ),
      title: Text(
        inbox.title,
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => InboxDetail(inbox: inbox)
        ));
      },
    );

    Card makeCard(Inbox inbox) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white70),
        child: makeListTile(inbox),
      ),
    );

    final makeBody = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft,
          colors: [Colors.greenAccent,Colors.white]),
      ),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: inbox.length,
          itemBuilder: (BuildContext context, int index){
            return makeCard(inbox[index]);
          },
      ),
    );

    return Scaffold(
      body: makeBody,
    );
  }
}

List getInbox(){
  return [
    Inbox(
      title: "Diterima Operator BKSD",
      content: "Pengajuan Anda telah diterima oleh operator BKSD",
      download: false,
    ),
    Inbox(
      title: "Pengajuan Sedang Diproses",
      content: "Pengajuan Anda sedang diproses sistem",
      download: true,
    ),
  ];
}