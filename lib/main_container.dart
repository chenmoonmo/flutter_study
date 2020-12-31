import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(
              height: 200.0,
            ),
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            // color: Colors.yellowAccent,
            alignment: Alignment.centerLeft,
            child: Text(
              'Hello World',
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(color: Colors.white),
            ),
            // 背景装饰 decoration
            decoration: BoxDecoration(
              // 背景色
              color: Colors.blueAccent,
              // 圆角
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              // 渐变
              gradient: RadialGradient(
                colors: [
                  Colors.purpleAccent,
                  Colors.pinkAccent,
                ],
                center: Alignment.topLeft,
                radius: .98,
              ),
              // 阴影
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.purple,
                  offset: Offset(0, 2),
                  blurRadius: 2,
                ),
              ],
              // 背景图
              // image: DecorationImage(
              //   image: AssetImage('assets/ant.jpeg'),
              //   fit: BoxFit.cover,
              // ),
              // 背景混合模式
              backgroundBlendMode: BlendMode.color,
              shape: BoxShape.rectangle,
            ),
            // 前景装饰
            // foregroundDecoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('assets/ant.jpeg'),
            //   ),
            // ),
            // 旋转
            transform: Matrix4.rotationZ(0.1),
          ),
        ),
      ),
    );
  }
}
