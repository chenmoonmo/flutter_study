import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                print('点击事件1');
              },
              child: Text('点我'),
            ),
            Text(
              '字体24下划线',
              style: TextStyle(
                fontSize: 24.0,
                decoration: TextDecoration.underline,
                color: Colors.blue,
              ),
              textAlign: TextAlign.start,
            ),
            Text(
              '缩放 加粗',
              textAlign: TextAlign.left,
              textScaleFactor: 2.0,
              style: TextStyle(
                // 文字粗细
                fontWeight: FontWeight.w600,
                color: Colors.greenAccent,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '缩放, 这是多行文字 这是多行文字 这是多行文字 这是多行文字 这是多行文字 这是多行文字 这是多行文字 这是多行文字 这是多行文字',
                textScaleFactor: 1.0,
                textAlign: TextAlign.center,
                // 文字换行
                softWrap: true,
                // 超出文字省略 ...
                overflow: TextOverflow.ellipsis,
                // 文字最大行数
                maxLines: 2,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text.rich(
              TextSpan(
                text: '@片段',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '字符串1',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: '字符串2',
                    style: TextStyle(
                      color: Colors.cyan,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                text: '点击',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 18.0,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                  background: Paint()..color = Colors.yellow,
                ),
                // recognizer 用来识别事件
                // TapGestureRecognizer 点击手势
                // .. 为集联操作 为TapGestureRecognizer.onTap()
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // 增加一个点击事件
                    print('点击事件2');
                  },
              ),
            )
          ],
        ),
      ),
    );
  }
}
