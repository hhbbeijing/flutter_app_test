import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  var _result;
  @override
  void initState() {
    rootBundle.loadString("assets/config.json").then((value) {
      print(value);
      _result = json.decode(value); // 赋值
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page Main'),
        ),
        body: Center(
          child: IconButton(
              onPressed: () {
                print(_result);
              },
              icon: Icon(Icons.add)),
        ));
  }
}


