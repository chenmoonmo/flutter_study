import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _builBody() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.redAccent,
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blueGrey,
                ),
                flex: 1,
              )
            ],
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.redAccent,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.greenAccent,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.orangeAccent,
          )
        ],
      );
      // return Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: <Widget>[
      //     Container(
      //       width: 100.0,
      //       height: 100.0,
      //       // color: Colors.pink[300],
      //       // margin: EdgeInsets.all(10),
      //       decoration: BoxDecoration(
      //         color: Colors.pink[300],
      //         borderRadius: BorderRadius.all(
      //           Radius.circular(8.0),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: 100.0,
      //       height: 100.0,
      //       // color: Colors.pink[300],
      //       // margin: EdgeInsets.all(10),
      //       decoration: BoxDecoration(
      //         color: Colors.green[300],
      //         borderRadius: BorderRadius.all(
      //           Radius.circular(8.0),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: 100.0,
      //       height: 100.0,
      //       // color: Colors.pink[300],
      //       // margin: EdgeInsets.all(10),
      //       decoration: BoxDecoration(
      //         color: Colors.purple[300],
      //         borderRadius: BorderRadius.all(
      //           Radius.circular(8.0),
      //         ),
      //       ),
      //     ),
      //   ],
      // );
    }

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row Colunm'),
        ),
        body: _builBody(),
      ),
    );
  }
}
