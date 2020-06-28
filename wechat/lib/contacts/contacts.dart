import 'package:flutter/material.dart';
import './contact_header.dart';
import './contact_slider_list.dart';
import './contact_item.dart';
import 'contact_vo.dart';
class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactSliderList(
        items: contactData,
        headerBuilder: (context,index){
          return Container(
            child: ContactHeader(),
          );
        },
       itemBuilder: (BuildContext context,int index){
         return Container(
           color: Colors.white,
           alignment: Alignment.centerLeft,
           child: ContactItem(item: contactData[index]),
         );
      },
       sectionBuilder: (context,index){
         return Container(
           color: Colors.grey[300],
           height: 32,
           padding: EdgeInsets.only(left: 14),
           alignment: Alignment.centerLeft,
           child: Text(
             contactData[index].seationKey,
             style: TextStyle(
               fontSize: 14,
               color: Color(0xff909090)
             ),
           ),
         );
       }),
    );
  }
}