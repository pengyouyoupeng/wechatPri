import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      print("flutter高仿微信程序启动");
      Navigator.of(context).pushReplacementNamed("/app");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("images/750_1334.jpg"),
    );
  }
}