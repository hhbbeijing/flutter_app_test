import 'package:flutter/material.dart';
import 'package:flutter_app_test/pages/example/ttf/MyIcons.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        padding: const EdgeInsets.all(100),
        child: Row(
          children: [
            Icon(MyIcons.home,size: 100,),
            Text("This is a ttf!"),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     items: [
      //       BottomNavigationBarItem(icon: Icon(MyIcons.home),label: "首页"),
      //       BottomNavigationBarItem(icon: Icon(MyIcons.life),label: "生活"),
      //       BottomNavigationBarItem(icon: Icon(MyIcons.money),label: "金融"),
      //       BottomNavigationBarItem(icon: Icon(MyIcons.mine),label: "我的"),
      //     ]
      // ),
    );
  }
}
