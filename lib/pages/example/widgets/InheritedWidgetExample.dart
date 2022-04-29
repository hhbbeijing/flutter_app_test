import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Flutter Demo',
    home: const MyHomePage(title: 'flutter Demo Home Page'),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedCounter(
      data: this,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: IncrementBody(),
        floatingActionButton: IncrementButton(), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

class IncrementBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '${InheritedCounter.of(context).data.counter}',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: InheritedCounter.of(context).data.incrementCounter,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}

class InheritedCounter extends InheritedWidget {
  const InheritedCounter({
    Key? key,
    required this.data,
    required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  final _MyHomePageState data;

  static InheritedCounter of(BuildContext context) {
    final InheritedCounter? result = context.dependOnInheritedWidgetOfExactType<InheritedCounter>();
    assert(result != null, 'No InheritedCounter found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedCounter old) => true;
}


