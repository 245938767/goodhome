import 'package:flutter/material.dart';
import 'package:goodhome/pages/home/list_info/home_index.dart';
import 'package:goodhome/widgets/page_content.dart';

class HomePage extends StatefulWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOption = <Widget>[
    homeIndex(),
    PageContent(name: "找房"),
    PageContent(name: "质询"),
    PageContent(name: "我的"),
  ];
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage._widgetOption.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: "找房"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "资讯"),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined), label: "我的"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        type: BottomNavigationBarType.fixed,
        onTap: _onItemSelected,
      ),
    );
  }
}
