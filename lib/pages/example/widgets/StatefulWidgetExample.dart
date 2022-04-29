import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'My app',
    home: YellowBird(),
  ));
}

class YellowBird extends StatefulWidget{
  const YellowBird({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _YellowBirdState();
  }
}

class _YellowBirdState extends State<YellowBird>{
  int _counter = 1000;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('鸟的数量：'+'$_counter'),
            IconButton(onPressed: _incrementCounter, icon: Icon(Icons.add)),
          ],
        ),
      )
    );

  }
}




