import 'package:flutter/cupertino.dart';
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
        body: Column(
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('扁平按钮'),
                  onPressed: () {
                    print('这个一个扁平按钮');
                  },
                ),
                FlatButton(
                  child: Text('被禁用的扁平按钮'),
                  onPressed: null,
                ),
              ],
            ),
            ButtonBar(
              children: <Widget>[
                BackButton(
                  color: Colors.orange,
                ),
                CloseButton(
                  color: Colors.redAccent,
                ),
              ],
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.add_call, size: 18),
                  label: Text('带图片扁平按钮'),
                  onPressed: () {},
                ),
                FlatButton.icon(
                  icon: Icon(
                    Icons.access_alarm_sharp,
                    size: 18,
                  ),
                  label: Text('带图标扁平按钮 禁用'),
                  onPressed: null,
                ),
              ],
            ),
            ButtonBar(
              children: <Widget>[
                OutlineButton(
                  child: Text(
                    '带边框按钮',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  onPressed: () {},
                ),
                OutlineButton(
                  child: Text('带边框按钮 禁用'),
                  onPressed: null,
                ),
              ],
            ),
            ButtonBar(
              children: [
                RaisedButton(
                  child: Text('立体按钮'),
                  onPressed: () {},
                ),
                RaisedButton(
                  onPressed: null,
                  child: Text('立体按钮 禁用'),
                ),
              ],
            ),
            ButtonBar(
              children: [
                RaisedButton.icon(
                  icon: Icon(Icons.radio),
                  label: Text('立体按钮带图标'),
                  onPressed: () {},
                ),
                RaisedButton.icon(
                  icon: Icon(Icons.zoom_out_map_sharp),
                  label: Text('立体按钮带图标 禁用'),
                  onPressed: null,
                )
              ],
            ),
            ButtonBar(
              children: <Widget>[
                MaterialButton(
                  onPressed: () {},
                  child: Text('Material按钮'),
                ),
                MaterialButton(
                  onPressed: null,
                  child: Text('Material按钮 禁用'),
                ),
              ],
            ),
            ButtonBar(
              children: <Widget>[
                RawMaterialButton(
                  child: Text('RawMaterial按钮'),
                  onPressed: () {},
                ),
                RawMaterialButton(
                  onPressed: null,
                  child: Text('RawMaterial按钮 禁用'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
