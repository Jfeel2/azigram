import 'package:dietdog/community_part/community.dart';
import 'package:dietdog/main%20page/todo.dart';
import 'package:dietdog/profile_part/profile.dart';
import 'package:flutter/material.dart';


class MainPage extends  Page{
  
  static final pageName = 'MainPage'; //keyword = pageName 이용 화면에 보여주기 
  
  @override
  Route createRoute(BuildContext context) {    //다른 페이지로 가는 route 입력 
   return MaterialPageRoute(settings: this, builder: (context) => MainWidget());
  }
}

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int _selectedIndex = 0;

  //* 페이지지 list에 각각 넣기
  List _widgetOptions = [
      //* community, todo, profile _ 순서대로 
      CommunityWidget(),  //navigator 부분에서는 page로 하지만 여기서는 widget 형태로 넣기 
      TodoWidget(),
      ProfileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar( ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xff7b61ff),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 1,
        unselectedFontSize: 1,
        currentIndex: _selectedIndex, //현재 선택된 Index
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem( //* community
            icon: Icon(Icons.category_outlined),
            label: ''
          ),
          BottomNavigationBarItem(  //* todo
            icon: Icon(Icons.home_outlined),
            label: ''
          ),
          BottomNavigationBarItem(  //* profile
            icon: Icon(Icons.person_outlined), 
            label: ''
          ),
        ],
      ),
      body: Align(
        child:  _widgetOptions.elementAt(_selectedIndex)
      )
    );
  }
}

//* 사이즈 0인 appbar 클래스 
class EmptyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  Size get preferredSize => Size(0.0, 0.0);
}

