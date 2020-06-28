import 'package:flutter/material.dart';
import './contact_vo.dart';
class ContactItem extends StatelessWidget {
  final ContactVO item;
  final String titleName;
  final String imageName;
  ContactItem({this.item,this.titleName,this.imageName});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0xfff9f9f9)
          )
        )
      ),
      height: 52,
      child: FlatButton(
        onPressed: (){

      },
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           imageName==null?
          Image.network(
              item.avatarUrl != ''
           ?item.avatarUrl:
           'http://up.enterdesk.com/edpic/31/c3/fd/31c3fdc63511cabedd6415d121fa2d58.jpg',
           width: 36,
           height: 36,
           scale:0.9 ,
          ):
          Image.asset(
            imageName,
            width: 36,
            height: 36,
          ),
          Container(
            margin: EdgeInsets.only(left: 12),
            child: Text(
              titleName ==null?item.name??'暂时':titleName,
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff353535),
                
              ),
              maxLines:1

            ),
          )
         ],
      )),
    );
  }
}