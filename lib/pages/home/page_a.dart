import 'package:flutter/material.dart';
import 'package:flutter_app_test/routes/application.dart';

class PageA extends StatefulWidget {
  const PageA({Key? key}) : super(key: key);
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page A'),
          leading: Builder(
              builder: (BuildContext context){
                return IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed:(){
                    Application.router.pop(context);
                    //Navigator.pop(context);
                  }
                );
              }
          ),
        ),
        body:const Center(
          child: Text('Page A'),
        ),
    );
  }
}
