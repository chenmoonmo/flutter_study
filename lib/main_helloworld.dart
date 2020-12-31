import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main(List<String> args) {
  // runApp
  runApp(
    // MaterialApp
    MaterialApp(
      // Scaffold 页面脚手架哦
      home: Scaffold(
        // appBar 标题
        appBar: AppBar(
          title: Text('hello_world'),
        ),
        // body 正文
        // Center 居中组件
        body: Center(
          // Column 多行组件
          child: Column(
            children: <Widget>[
              Padding(
                // padding 组件
                padding: EdgeInsets.all(20.0),
                // Image 图片组件
                child: Image.asset('assets/ants.jpeg'),
              ),
              // TEXT文字组件
              Text(
                'hello world',
                // style 文字样式 TextStyle 文字样式组件
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 22.0,
                ),
              ),
              Text('hello world'),
            ],
          ),
        ),
        // 侧边栏
        drawer: Drawer(
          child: Text('sideBar'),
        ),
      ),
    ),
  );
}
