import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app顶部bar
      appBar: AppBar(
        // 标题
        title: Text('appbar'),
      ),
      // 主要内容
      body: Center(),
      // 右下角浮动按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.access_alarm,
        ),
      ),
      // 浮动按钮位置
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      // 左侧抽屉
      drawer: Drawer(
        child: Text('测试测试'),
      ),
      // 右侧抽屉
      endDrawer: Drawer(
        child: Text('测试测试2'),
      ),
      // 底部
      persistentFooterButtons: [
        Text('测试测试'),
        Text('测试测试'),
        Text('测试测试'),
        Text('测试测试'),
      ],
      // 最底部导航
      bottomNavigationBar: Text('bar'),
      // 页面底部
      bottomSheet: Text('bottomsheet'),
      // 页面背景色
      backgroundColor: Colors.pink[50],
      // primary false时顶部会被压缩
      // primary: false,
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MaterialApp  Material 风格的程序的构建，如 Key 导航 路由 首页 样式 多语言 调试
    return MaterialApp(
      title: 'Material App',
      color: Colors.cyanAccent,
      // 主题
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // 暗色模式 主题
      darkTheme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      // 去除debug banner
      debugShowCheckedModeBanner: false,
      // //显示网格定位
      // debugShowMaterialGrid: true,
      // // 显示性能
      // showPerformanceOverlay: true,
      // 检查不必要的setlayer
      // checkerboardOffscreenLayers: true,
      // 显示元素的位置
      // showSemanticsDebugger: true,
      home: MyScaffold(),
    );
  }
}
