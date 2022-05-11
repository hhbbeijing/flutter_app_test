import 'package:flutter/material.dart';

// TapboxA manages its own state.

//------------------------- TapboxA ----------------------------------
void main() {
  runApp(const MyApp());
}

class TapboxA extends StatefulWidget {
  const TapboxA({Key? key}) : super(key: key);

  @override
  _TapboxAState createState() => _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
          //Cannot provide both a color and a decoration.
          // color: Colors.black,
          child: Row(
        children: [
          Container(
            child: Center(
              child: Text(
                _active ? 'Active' : 'Inactive',
                style: const TextStyle(fontSize: 32.0, color: Colors.white),
              ),
            ),
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: _active ? Colors.lightGreen[700] : Colors.grey[600],
            ),
          ),
          Container(
            child: Center(
              child: Text(
                _active ? 'Active' : 'Inactive',
                style: const TextStyle(fontSize: 32.0, color: Colors.white),
              ),
            ),
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              //若是设置了 image，color也就无效了
              color: _active ? Colors.lightGreen[700] : Colors.grey[600],
              image: const DecorationImage(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.blueAccent,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                _active ? 'Active' : 'Inactive',
                style: const TextStyle(fontSize: 32.0, color: Colors.white),
              ),
            ),
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              //若是设置了gradient，color也就无效了
              color: _active ? Colors.lightGreen[700] : Colors.grey[600],
              gradient: const LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.blueAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          )
        ],
      )),
    );
  }
}

//------------------------- MyApp ----------------------------------

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: const Center(
          child: TapboxA(),
        ),
      ),
    );
  }
}
