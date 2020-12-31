import 'package:flutter/material.dart';

// StatelessWidget 无状态组件
class ImageShow extends StatelessWidget {
  final String imgName;
  // 构造函数
  // @required 必填
  const ImageShow({Key key, @required this.imgName}) : super(key: key);
  // 重写build函数 返回 Widget类型
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/$imgName');
  }
}
