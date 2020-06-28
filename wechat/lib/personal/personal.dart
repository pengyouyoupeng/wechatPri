
import 'package:flutter/material.dart';
import '../common/touch_callback.dart';
import '../common/wechat_item.dart';

class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.white,
            height: 80,
            child: TouchCallBack(
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 12,right: 15),
                    child: Image.asset(
                      'images/concat.png',
                      width: 70,
                      height: 70,

                    ),
                  ),
                  Expanded(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '图图',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff353535)
                          ),
                        ),
                         Text(
                          '微信号',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff888888)
                          ),
                        ),
                      ],
                    ) 
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12,right: 15),

                    child: Image.asset(
                    'images/concat.png',
                    width: 24,
                    height: 24,
                    ),
                  )

                ],
              ) 
            , onPressed: null),
          ),
          Container(
            margin: EdgeInsets.only(top:20),
            color: Colors.white,
            child: WechatItem(title: "钱包",imagePath: 'images/concat.png'),
          ),
          Container(
            margin: EdgeInsets.only(top:20),
            color: Colors.white,
            child: Column(
              children: <Widget>[
               WechatItem(title: "收藏",imagePath: 'images/concat.png'),
               Padding(
                 padding: EdgeInsets.only(left: 15,right: 15),
                 child: Divider(
                   height: 0.5,
                   color: Color(0xffd9d9d9),
                 ),
               ),
               WechatItem(title: "相册",imagePath: 'images/concat.png'),
               Padding(
                 padding: EdgeInsets.only(left: 15,right: 15),
                 child: Divider(
                   height: 0.5,
                   color: Color(0xffd9d9d9),
                 ),
               ),
               WechatItem(title: "卡包",imagePath: 'images/concat.png'),
                Padding(
                 padding: EdgeInsets.only(left: 15,right: 15),
                 child: Divider(
                   height: 0.5,
                   color: Color(0xffd9d9d9),
                 ),
               ),
               WechatItem(title: "表情包",imagePath: 'images/concat.png'),
              ],
            ),
          ),
           Container(
            margin: EdgeInsets.only(top:20),
            color: Colors.white,
            child: WechatItem(title: "设置",imagePath: 'images/concat.png'),
          ),
        ],
      ),
    );
  }
}