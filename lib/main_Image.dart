import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const _imageUrl =
        'https://p3-bk.byteimg.com/tos-cn-i-mlhdmxsy5m/1851c8b2994b45879f8607a4045a85ac~tplv-mlhdmxsy5m-q75:1080:1080.image';
    const assetImage = 'assets/ant.jpeg';
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text('本地文件'),
              Image.asset(assetImage),
              Text('网络读取'),
              Image.network(_imageUrl),
              Text('占位图'),
              FadeInImage(
                fadeInCurve: Curves.bounceIn,
                image: NetworkImage(_imageUrl),
                placeholder: AssetImage(assetImage),
              ),
              Text('原型头像'),
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('圆形图片'),
                backgroundImage: AssetImage(assetImage),
                radius: 50.0,
              ),
              Text('Icon'),
              ImageIcon(
                NetworkImage(_imageUrl),
                size: 100,
              ),
              Text('ClipRRect 圆角'),
              ClipRRect(
                child: Image.network(_imageUrl),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              Text('圆角矩形框'),
              Container(
                width: 200,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(_imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text('椭圆形'),
              ClipOval(
                child: Image.network(
                  _imageUrl,
                  scale: 8.5,
                ),
              ),
              Text('混色'),
              Image.asset(
                assetImage,
                color: Colors.amber,
                colorBlendMode: BlendMode.exclusion,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
