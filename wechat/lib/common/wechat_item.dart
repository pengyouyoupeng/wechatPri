
import 'package:flutter/material.dart';
import './touch_callback.dart';
class WechatItem extends StatelessWidget {
    final String title;
    final String imagePath;
    final Icon icon;
    WechatItem({Key key,@required this.title,this.imagePath,this.icon}):super(key:key);


  @override
  Widget build(BuildContext context) {
    return TouchCallBack(
      child: Container(
        height: 50,
        child: Row(
          children: <Widget>[
            Container(
              child: imagePath != null?
              Image.asset(
                imagePath,
                width: 32,
                height: 32,
              ):
              SizedBox(
                height: 32,
                width: 32,
                child: icon,
              )
              ,
              margin: EdgeInsets.only(left: 22,right: 20),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff888888)
              ),
            )
          ],
        ),

      )
    , onPressed: (){
      switch (this.title) {
        case '朋友圈':
          Navigator.pushNamed(context, '/friends');
          break;
        case '收藏':
        default:
      }
    });
  }
}