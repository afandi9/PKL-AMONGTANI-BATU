import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenericCard extends StatefulWidget {
  GenericCard(
      {Key key,
        this.date,
        this.title,
        this.catatan,
        this.subtitle,
        this.output,
        this.body,
        this.iconButtons1,
        this.iconButtons2,
        this.iconButtons3,})
      : super(key: key);

  //variables
  final String title;
  final String catatan;
  final String date;
  final String output;
  final String subtitle;
  final String body;
  final List<IconButton> iconButtons1,iconButtons2,iconButtons3;

  @override
  _GenericCardState createState() => _GenericCardState();
}

class _GenericCardState extends State<GenericCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Icon(Icons.calendar_today,color: Colors.red,),
                            ),
                            Text(widget.date),
                          ],
                        ),
                      ),


                    ]),
                ListTile(
                  title: Text(widget.title),
                  subtitle: Text(widget.subtitle),
                ),
                Padding(
                    padding: EdgeInsets.all(1),
                    child: ListTile(
                      title: Text(widget.catatan),
                      subtitle: Text(widget.body),
                    )
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(15),
                            child: Icon(Icons.assignment,color: Colors.yellow,),
                          ),
                          Text('Output :'+widget.output),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Icon(Icons.done_outline,color: Colors.green,),
                            ),
                          ]),
                    )
                  ],
                ),
              ]),
        )
    );
  }
}

