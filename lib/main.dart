import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _bodyBuild() {
      return IndexedStack(
        index: 2,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.cyanAccent,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
          Container(
            width: 300,
            height: 300,
            color: Colors.redAccent,
          ),
        ],
      );

      // return Stack(
      //   // 控制子元素的位置
      //   alignment: Alignment.topRight,
      //   children: [
      //     Container(
      //       width: 300,
      //       height: 300,
      //       color: Colors.orange,
      //     ),
      //     Positioned(
      //       width: 200,
      //       height: 200,
      //       top: 20,
      //       left: 20,
      //       child: Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.green,
      //       ),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.blueAccent,
      //     ),
      //   ],
      // );
    }

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: _bodyBuild(),
      ),
    );
  }
}
