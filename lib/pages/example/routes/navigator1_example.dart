import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: HomePage(),
    routes: <String, WidgetBuilder>{
      '/home':(BuildContext context) => HomePage(),
      '/detail': (context, {arguments}) => DetailPage(content: ModalRoute.of(context)?.settings.arguments as String),
    },
  ));
}

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detail',arguments:"This is HomePage params!").then((value){
                print("value-->"+value.toString());
              });
            },
            child: Text('首页，点击跳转详情页[Navigator.pushNamed]',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white, decoration: TextDecoration.none))));
  }
}

class DetailPage extends StatelessWidget {
  final String content;

  const DetailPage({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
            onTap: () async {
              Navigator.pop(context,"This is a DetailPage return params!");
            },
            child: Text('详情页，点击跳转首页[Navigator.pop],传递过来的参数为：$content',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white, decoration: TextDecoration.none))));
  }
}



