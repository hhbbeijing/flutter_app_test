import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyScaffold(),
  ));
}

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example title!',
              style: Theme.of(context).primaryTextTheme.titleMedium,
            ),
          ),
          Expanded(
              child: Center(
                child: Text('Hello!'),
              )
          )
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget{
  MyAppBar({required this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget>[
          IconButton(onPressed: null, icon:  Icon(Icons.menu),tooltip: 'Navigation menu',),
          Expanded(child: title),
          IconButton(onPressed: null, icon: Icon(Icons.search),tooltip: 'Search',)
        ],
      ),
    );
  }
}
