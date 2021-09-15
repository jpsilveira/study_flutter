import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: <Widget>[
          Container(
            height: 113,
            color: Colors.blue,
          ),
          Container(
            height: 490,
            color: Colors.green,
            child: ListView(
              children: <Widget>[
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste2"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
                Text("teste"),
              ],
            ),
          ),
          Container(
            height: 80,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
