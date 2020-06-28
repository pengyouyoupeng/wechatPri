import 'package:flutter/material.dart';
import './chat/message_page.dart';
import './contacts/contacts.dart';
import './found/found.dart';
import './personal/personal.dart';
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _currentIndex=0;
  MessagePage message;
  Contacts contacts;
  Found found;
  Personal personal;
  currentPage(){
    switch (_currentIndex) {
      case 0:
      {
        if (message==null) {
          message = MessagePage();
        }
        return message;
        
      }
        break;
      case 1:
      {
        if (contacts==null) {
          contacts = Contacts();
        }
        return contacts;
      }
      break;
      case 2:
      {
        if (found==null) {
          found = Found();
        }
        return found;
      }
      break;
      case 3:
      {
        if (personal==null) {
          personal = Personal();
        }
        return personal;
      }
      break;
      default:
    }
  }

  _popMenuItem(String title,{String imagePath,IconData icon}){
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          imagePath !=null?
          Image.asset(
            imagePath,
            width: 32,
            height: 32,
          ):SizedBox(
            width: 32,
            height: 32,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white
              ),
            ),
          )

        ],
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search), onPressed: (){
              Navigator.pushNamed(context, "/search");
          }),
          // SizedBox(width: 15),
          IconButton(icon: Icon(Icons.add), onPressed: (){
            showMenu(context: context,  position: RelativeRect.fromLTRB(500, 76, 10, 0), items: <PopupMenuEntry>[
              _popMenuItem('发起群聊',imagePath: "images/weixin.png"),
              _popMenuItem('添加朋友',imagePath: "images/tianjiapengyou.png"),
              _popMenuItem('扫一扫',imagePath: "images/richscan_icon.png"),
              _popMenuItem('收付款',imagePath: "images/shoufukuan.png"),
            ]);

          })
        ],
      ),
      body: currentPage(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex==0?Image.asset(
              'images/weixin.png',
              width: 32,
              height: 28,
            ):Image.asset(
              'images/weixin-2.png',
            ),
            title: Text(
              '微信',
              style: TextStyle(
                color: _currentIndex==0?Color(0xff46c01b):Color(0xff999999)
              ),
              )
          ),
           BottomNavigationBarItem(
            icon: _currentIndex==1?Image.asset(
              'images/concat.png',
              width: 32,
              height: 28,
            ):Image.asset(
              'images/concat-2.png',
            ),
            title: Text(
              '通讯录',
              style: TextStyle(
                color: _currentIndex==1?Color(0xff46c01b):Color(0xff999999)
              ),
              )
          ),
           BottomNavigationBarItem(
            icon: _currentIndex==2?Image.asset(
              'images/faxian.png',
              width: 32,
              height: 28,
            ):Image.asset(
              'images/faxian-2.png',
            ),
            title: Text(
              '发现',
              style: TextStyle(
                color: _currentIndex==2?Color(0xff46c01b):Color(0xff999999)
              ),
              )
          ),
           BottomNavigationBarItem(
            icon: _currentIndex==3?Image.asset(
              'images/wo.png',
              width: 32,
              height: 28,
            ):Image.asset(
              'images/wo-2.png',
            ),
            title: Text(
              '我的',
              style: TextStyle(
                color: _currentIndex==3?Color(0xff46c01b):Color(0xff999999)
              ),
              )
          )
        ]
      ),
    );
  }
}