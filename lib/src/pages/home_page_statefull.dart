import 'package:flutter/material.dart';

class HomePageStatefull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageStatefullState();
  }
}

class _HomePageStatefullState extends State<HomePageStatefull> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My first application"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Number of clicks:", style: TextStyle(fontSize: 22)),
            Text("$_counter", style: TextStyle(fontSize: 25))
          ],
        )),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 45),
        FloatingActionButton(
            onPressed: _resetCounter, child: Icon(Icons.access_alarm)),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            onPressed: _decreaseCounter, child: Icon(Icons.ac_unit)),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            onPressed: _increaseCounter, child: Icon(Icons.time_to_leave)),
        SizedBox(width: 15)
      ],
    );
  }

  void _increaseCounter() {
    print("increase");

    setState(() {
      this._counter++;
    });
  }

  void _decreaseCounter() {
    print("decrease");

    if (this._counter > 0) {
      setState(() {
        this._counter--;
      });
    }
  }

  void _resetCounter() {
    print("reset");
    setState(() {
      this._counter = 0;
    });
  }
}
