import 'package:flutter/material.dart';
import './contact_vo.dart';

const siderBarKey=<String>[
  "↑",
  "☆",
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "G",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z",
  "#"
];


class ContactSliderList extends StatefulWidget {
  final List<ContactVO> items;
  final IndexedWidgetBuilder headerBuilder;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder sectionBuilder;

ContactSliderList({Key key,@required this.items,this.headerBuilder,@required this.itemBuilder,@required this.sectionBuilder}):super(key:key);
  @override
  _ContactSliderListState createState() => _ContactSliderListState();
}



class _ContactSliderListState extends State<ContactSliderList> implements SectionIndexer{

  Color _pressColor = Colors.transparent;// sliderbar背景色默认透明
  final ScrollController _scrollController = ScrollController();
  bool _onNotification(ScrollNotification notification){
    return true;
  }
  _isShowHeaderView(index){
    if (index==0&& widget.headerBuilder !=null) {
      return Offstage(
        offstage: false,
        child: widget.headerBuilder(context,index),
      );
    }
    return Container();
  }
  _shouldShowHeader(int position){
    if (position<0) {
      return false;
    }
    if (position==0) {
      return false;
    }
    if (position !=0 &&widget.items[position].seationKey !=widget.items[position -1].seationKey) {
      return false;
    }
    return true;
  }
  @override
  listScrollToPosition(int index){
    // 重要方法:根据滑动的字母返回listview中的位置
    for (var i = 0; i < widget.items.length; i++) {
      if (siderBarKey[index]=="☆"||siderBarKey[index]=="↑") {
        _scrollController.jumpTo(0);
        setState(() {
          
        });
        return -1;
      }else if(widget.items[i].seationKey==siderBarKey[index]){
        return i;
      }
    }
    return -1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: <Widget>[
          // 列表加载更多
          NotificationListener(
            onNotification: _onNotification,
            child: ListView.builder(
              controller: _scrollController,
              physics: AlwaysScrollableScrollPhysics(),// list里面的内容不一屏，list都可以滚动
              itemCount: widget.items.length,
              itemBuilder: (context,index){
                return Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      _isShowHeaderView(index),
                      Offstage(
                        offstage:_shouldShowHeader(index) ,
                        child: widget.sectionBuilder(context,index),
                      ),
                      Column(
                        children: <Widget>[
                          widget.itemBuilder(context,index)

                        ],
                      )
                    ],
                  ),
                );
              }
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: 32,
              color: _pressColor,
              child: GestureDetector(
                onTapDown: (TapDownDetails t){
                  // 手指按下
                  setState(() {
                    _pressColor = Colors.grey;
                  });
                },
                onTapUp: (TapUpDetails t){
                  setState(() {
                    _pressColor =Colors.transparent;
                  });
                
                },
                onVerticalDragStart: (DragStartDetails details){
                  // 开始垂直滑动
                  setState(() {
                    _pressColor = Colors.grey;

                  });

                },
                onVerticalDragEnd: (DragEndDetails details){
                  // 结束垂直滑动
                  setState(() {
                    _pressColor = Colors.transparent;
                  });
                },
                onVerticalDragUpdate: (DragUpdateDetails details){
                    // 手指垂直滑动时

                },
                child: ListView.builder(
                  controller: ScrollController(),
                  itemCount: siderBarKey.length,
                  itemBuilder: (context,index){
                    return Container(
                      alignment: Alignment.center,
                      height: 17,
                      child: Text(
                        siderBarKey[index]
                      ),
                    );
                  }),
              ),

            )
          )
        ],
      ),
    );;
  }
}
abstract class SectionIndexer{
  listScrollToPosition(int index);
}