import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('按钮'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("normal"),
              onPressed: () {},
            ),
            TextButton(
              child: Text("normal"),
              onPressed: () {},
            ),
            OutlineButton(
              child: Text("normal"),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {},
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.send),
              label: Text("发送"),
              onPressed: () {},
            ),
            OutlineButton.icon(
              icon: Icon(Icons.add),
              label: Text("添加"),
              onPressed: () {},
            ),
            TextButton.icon(
              icon: Icon(Icons.info),
              label: Text("详情"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
