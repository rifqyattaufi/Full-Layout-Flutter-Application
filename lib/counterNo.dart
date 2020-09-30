import 'package:flutter/material.dart';

class counterNo extends StatefulWidget {
  @override
  _counterNoState createState() => _counterNoState();
}

class _counterNoState extends State<counterNo> {
  int number = 0;

  void tekanTambah() {
    setState(() {
      number = number + 1;
    });
  }

  void tekanKurang() {
    if (number == 0) {
      return;
    }

    setState(() {
      number = number - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter Number"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.toString(),
                style: TextStyle(fontSize: 20 + number.toDouble()),
              ),
              RaisedButton(
                onPressed: tekanTambah,
                child: Icon(Icons.add),
                color: Colors.lightBlue,
              ),
              RaisedButton(
                onPressed: tekanKurang,
                child: Icon(Icons.remove),
                color: Colors.lightBlue,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go To Counter Data"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
