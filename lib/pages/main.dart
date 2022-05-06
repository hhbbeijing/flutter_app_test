import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app_test/routes/application.dart';
import 'package:flutter_app_test/routes/route.dart';

void main() {
  FluroRouter  router = FluroRouter();
  Application.router = router; //一定要先写这行
  Routes.configureRoutes(router);
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MainPage());
  }
}
class MainPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page Main'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Application.router.navigateTo(context, "/a");
            },
            child: const Text('首页，点击跳转到 Page A',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black, decoration: TextDecoration.none),
            )
          )
        ),
      );
  }
}