import 'package:flutter/material.dart';
import './contact_item.dart';
import './contact_vo.dart';
class ContactHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ContactItem( titleName: "新的朋友",imageName: 'images/concat.png'),
         ContactItem( titleName: "新的朋友",imageName: 'images/concat.png'),
          ContactItem( titleName: "新的朋友",imageName: 'images/concat.png')
      ],
    );
  }
}