import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: HomePage(),
    routes: <String, WidgetBuilder>{
      '/home':(BuildContext context) => HomePage(),
      '/detail':(BuildContext context) => DetailPage(),
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
              Navigator.pushNamed(context, '/detail');
            },
            child: Text('首页，点击跳转详情页[Navigator.pushNamed]',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white, decoration: TextDecoration.none))));
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
            onTap: () async {
              Navigator.pop(context);
               bool? value = await Navigator.push(context, MaterialPageRoute<bool>(
                 builder: (BuildContext context) {
                   return Center(
                     child: GestureDetector(
                       child: Text('OK'),
                       onTap: () { Navigator.pop(context, true); }
                     ),
                   );
                 }
               ));
               print('value:'+value.toString());
            },
            child: Text('详情页，点击跳转首页[Navigator.pop]',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white, decoration: TextDecoration.none))));
  }
}
