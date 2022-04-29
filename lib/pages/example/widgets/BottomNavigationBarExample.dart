import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'My app',
    home: HomePage(),
  ));
}


List<BottomNavigationBarItem> barItemList = [
  const BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
  const BottomNavigationBarItem(label: '搜索', icon: Icon(Icons.search)),
  const BottomNavigationBarItem(label: '资讯', icon: Icon(Icons.info)),
  const BottomNavigationBarItem(label: '我的', icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  TutorialHome createState() => TutorialHome();
}

class TutorialHome   extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon:  Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const <Widget>[
          IconButton(
            icon:  Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: barItemList,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
      ),
      body: Center(
        child:
         Text('This is a BottomNavigationBar Example !'),
      ),
    );

  }
}
