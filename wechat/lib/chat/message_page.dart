
import 'package:flutter/material.dart';
import 'message_data.dart';
import 'message_item.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context,index){
          return MessageItem(messageData[index]);
        }
      ),
    );;
  }
}
