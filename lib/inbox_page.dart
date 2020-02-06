import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "inbox",
    home: new InboxPage(),
  ));
}

class InboxContent{
  String message;

  InboxContent(this.message);
  String getMessage() => this.message;
}

class InboxGenerator{
static var inboxList = [
  InboxContent("Diterima Operator BKSD"),
  InboxContent("Pengajuan Sedang Diproses"),
];
static InboxContent getInboxContent(int i)=> inboxList[i];
static int inboxListLength = inboxList.length;
}

class InboxPage extends StatefulWidget {
  static String tag = 'inbox page';
  @override
  _InboxPage createState() => new _InboxPage();
}

class _InboxPage extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.bottomLeft,
        colors: [Colors.greenAccent,Colors.white])),
      child :
      ListView.builder(
          itemCount: InboxGenerator.inboxListLength,
          itemBuilder: (context,i){
            InboxContent inboxContent = InboxGenerator.getInboxContent(i);
            return Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 14.0, right: 14.0, top: 5.0, bottom: 5.0
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                  CircleAvatar(
                  radius: 25,
                    child: Image.asset('assets/logo.png'),
            ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  inboxContent.message,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 15.0
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
            ],);
          }),
      ),
      ),
    );
  }
}