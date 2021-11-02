import 'package:flutter/material.dart';
import 'cupertino_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloPage(title:'Hello world')
        //home: CupertinoPage(),
    );
  }
}

class HelloPage extends StatefulWidget {
  final String? title;

  const HelloPage({Key? key, this.title}) : super(key: key);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = 'Hello world';
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _changeMessage,
      ),
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_message, style: TextStyle(fontSize: 30)),
            Text('$_counter', style: TextStyle(fontSize: 30)),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoPage()));
            }, child: Text('화면 이동'))
          ],
        ),
      ),
    );
  }

  void _changeMessage() {
    setState(() {
      _message = '헬로 월드';
      _counter++;
    });
  }
}
