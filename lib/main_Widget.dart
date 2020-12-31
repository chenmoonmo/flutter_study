import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

// Widget 小部件
// StatelessWidget 不可变部件
// StatefulWidget 有状态部件
// State 为widget维护状态
// @override 复写时的注解
// build
// build中传递的参数
// final 是最终的，无法复写 无法赋值

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
            title: new Text('Welcome to Flutter'),
            backgroundColor: new Color(0xFF34ef56)),
        body: new Center(
            // child: new Text('Hello World'),
            // child: new Text(wordPair.asPascalCase),
            child: Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.amber[600],
          width: 100.0,
          height: 100.0,
          child: new Center(
            child: new RandomWords(),
          ),
        )),
      ),
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    // return new Text(
    //   wordPair.asPascalCase,
    //   textAlign: TextAlign.center,
    //   style: TextStyle(color: Colors.white, fontSize: 18.0),
    // );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}
