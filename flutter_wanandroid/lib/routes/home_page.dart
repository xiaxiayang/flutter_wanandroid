import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wanandroid/routes/home_home_page.dart';
import 'package:flutter_wanandroid/routes/home_knowledge_page.dart';
import 'package:flutter_wanandroid/routes/home_mine_page.dart';
import 'package:flutter_wanandroid/routes/home_navigation_page.dart';

/// 首页
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static  List<Widget>  _widgetOptions = <Widget>[
     HomeWidget(),KnowledgePange(),NavigationPage(),MineWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("wanandroid"),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

  BottomNavigationBar _bottomNavigationBar(){
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("首页")),
        BottomNavigationBarItem(icon: Icon(Icons.book),title: Text("知识体系")),
        BottomNavigationBarItem(icon: Icon(Icons.navigation),title: Text("导航")),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin),title: Text("我的")),
      ],
      currentIndex: _selectedIndex,
      type:BottomNavigationBarType.fixed,
      onTap: _onItemTaped,
    );
  }

  void _onItemTaped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
}
