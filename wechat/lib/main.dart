import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:wechat/leading.dart';
import 'app.dart';
import 'search.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wechat',
      theme: mDefaultTheme,
     routes:<String,WidgetBuilder> {
       "/app":(context)=>App(),
      "/friends":(_)=>WebviewScaffold(
        url: "https://weixin.qq.com",
        appBar: AppBar(
          title: Text(
          '微信朋友圈'
          ),
        ),
        withZoom: true,// 支持缩放
        withLocalStorage: true,// 支持本地存储
      ),
      "/search":(_)=>Search()
     },
     home: LoadingPage(),
    );
  }
}


final ThemeData mDefaultTheme = ThemeData(
primaryColor: Color(0xff303030),
scaffoldBackgroundColor: Color(0xffebebeb),
cardColor: Color(0xff393a3f)
);
