import 'package:flutter/material.dart';
import '../common/wechat_item.dart';
class Found extends StatefulWidget {
  @override
  _FoundState createState() => _FoundState();
}

class _FoundState extends State<Found> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              color:Colors.white,
              child: WechatItem(title: '朋友圈',imagePath: 'images/concat.png'),
            ),
             Container(
              margin: EdgeInsets.only(top: 20),
              color:Colors.white,
              child: WechatItem(title: '扫一扫',imagePath: 'images/concat.png'),
            ),
             Container(
              margin: EdgeInsets.only(top: 20),
              color:Colors.white,
              child: WechatItem(title: '摇一摇',imagePath: 'images/concat.png'),
            ),
             Container(
              margin: EdgeInsets.only(top: 20),
              color:Colors.white,
              child: WechatItem(title: '附近的人',imagePath: 'images/concat.png'),
            ),
             Container(
              margin: EdgeInsets.only(top: 20),
              color:Colors.white,
              child: WechatItem(title: '漂流瓶',imagePath: 'images/concat.png'),
            )


          ],
        ),
      ),
    );
  }
}