import 'package:flutter/material.dart';
import 'package:image_change/image_show.dart';

void main() => runApp(MyApp());

// StatefulWidget 有状态组件

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 成员状态变量
  String imgFileName = 'ant1.jpeg';
  String titleName = '山大齿猛蚁';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(titleName),
        ),
        body: Center(
          child: Column(
            children: [
              // 图片显示 lessw
              ImageShow(
                imgName: imgFileName,
              ),
              // 按钮
              RaisedButton(
                onPressed: () {
                  if (imgFileName == 'ant1.jpeg') {
                    imgFileName = 'ant2.jpg';
                    titleName = "香斑弓背蚁";
                  } else {
                    imgFileName = 'ant1.jpeg';
                    titleName = "山大齿猛蚁";
                  }

                  // 发生改变后调用setState进行更新
                  setState(() {
                    imgFileName = imgFileName;
                    titleName = titleName;
                  });
                },
                child: Text('切换图片'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
