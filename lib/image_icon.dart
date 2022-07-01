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
    String icons = "";
// accessible: 0xe03e
    icons += "\uE03e";
// error:  0xe237
    icons += " \uE237";
// fingerprint: 0xe287
    icons += " \uE287";

    return Scaffold(
      appBar: AppBar(
        title: const Text('图片及icon'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: NetworkImage(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
              width: 100.0,
            ),
            Image.network(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
              width: 100.0,
            ),
            Text(
              icons,
              style: TextStyle(
                fontFamily: "MaterialIcons",
                fontSize: 24.0,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
