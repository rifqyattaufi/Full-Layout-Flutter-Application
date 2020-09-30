import 'package:flutter/material.dart';
import 'package:latihan_list/counterNo.dart';

class counterData extends StatefulWidget {
  @override
  _counterDataState createState() => _counterDataState();
}

class _counterDataState extends State<counterData> {
  List<Widget> widgets = [];

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter Data"),
        ),
        body: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    widgets.add(Text(
                      "Data Ke " + counter.toString(),
                      style: TextStyle(fontSize: 50),
                    ));
                    counter++;
                  });
                },
                child: Icon(Icons.add),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    widgets.removeLast();
                    counter--;
                  });
                },
                child: Icon(Icons.minimize),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return counterNo();
                  }));
                },
                child: Text("Go To Number Counter"),
              )
            ],
          )
        ]),
      ),
    );
  }
}
