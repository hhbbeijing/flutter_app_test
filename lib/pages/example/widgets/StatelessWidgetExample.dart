import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: GreenFrog(),
  ));
}

class GreenFrog extends StatelessWidget {
  const GreenFrog({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,//垂直方向对齐方式
        crossAxisAlignment: CrossAxisAlignment.start,//水平方向对齐方式
        children: [
          Text("以下都是 StatelessWidget ："),
          Icon(Icons.android,//设置图标
            size: 50,
            color: Colors.red),
          IconButton(onPressed: null, icon: Icon(Icons.android)),
          Divider(height: 20,indent: 30,endIndent: 30,color: Colors.red),
          RaisedButton(onPressed: null,child: Text("RaisedButton-已废弃"),color: Colors.red),
          FlatButton(onPressed: null, child: Text("FlatButton-已废弃")),
          OutlinedButton(onPressed: null, child: Text("OutlinedButton-已废弃"))
        ],
      )
    );
  }
}