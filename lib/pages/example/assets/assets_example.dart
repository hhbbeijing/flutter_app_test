import 'package:flutter/material.dart';

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
  // This widget is the root of your application.
  final ButtonStyle style =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page Main'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.message,
                color: Colors.red,
                size: 30,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              IconButton(
                  onPressed: () {
                    print('IconButton pressed!');
                  },
                  icon: Icon(Icons.add)),
              const Image(
                image: AssetImage('assets/images/ic_launcher.png'),
                width: 30,
                height: 30,
              ),
              Image.asset("assets/images/ic_launcher.png",
                  width: 60, height: 60),
              Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                  width: 70,
                  height: 70),
              const Image(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                  width: 80,
                  height: 80),
              TextButton(
                  onPressed: () {
                    print('textButton');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(
                        image: AssetImage('assets/images/dialog_button_bg.png'),
                        width: 40,
                        height: 40,
                      ),
                      Text('按钮')
                    ],
                  ),
                  style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                      )),
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.transparent),
                      minimumSize: MaterialStateProperty.resolveWith(
                          (states) => Size(40, 40)),
                      padding: MaterialStateProperty.resolveWith(
                          (states) => EdgeInsets.zero))
              ),
              ElevatedButton(
                style: style,
                onPressed: (){},
                child: const Text('ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint('Received click');
                },
                child: const Text('OutlinedButton'),
              )
            ],
          ),
        ));
  }
}
