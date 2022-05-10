import 'package:flutter/material.dart';
import 'package:flutter_app_test/pages/example/ttf/MyIcons.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green,
        ),
        home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        padding: const EdgeInsets.all(100),
        child: Row(
          children: [
            Icon(
              MyIcons.home,
              size: 100,
              color: Colors.green,
            ),
            Text("This is a ttf!"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            _changePage(index);
          },
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black38,
          // backgroundColor: Colors.white,
          iconSize: 40,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(MyIcons.home),
                activeIcon: Icon(MyIcons.home),
                label: "首页"),
            BottomNavigationBarItem(
                icon: Icon(MyIcons.life),
                activeIcon: Icon(MyIcons.life),
                label: "生活"),
            BottomNavigationBarItem(
                icon: Icon(MyIcons.money),
                activeIcon: Icon(MyIcons.money),
                label: "理财"),
            BottomNavigationBarItem(
                icon: Icon(MyIcons.mine),
                activeIcon: Icon(MyIcons.mine),
                label: "我的"),
          ]),
    );
  }

  /*切换页面*/
  void _changePage(int index) {
    /*如果点击的导航项不是当前项  切换 */
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}
