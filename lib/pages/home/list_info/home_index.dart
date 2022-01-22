import 'package:flutter/material.dart';
import 'package:goodhome/pages/home/list_info/body_listview.dart';
import 'package:goodhome/pages/home/list_info/title_search.dart';

// ignore: camel_case_types
class homeIndex extends StatefulWidget {
  const homeIndex({Key? key}) : super(key: key);

  @override
  _homeIndexState createState() => _homeIndexState();
}

// ignore: camel_case_types
class _homeIndexState extends State<homeIndex> {
  //搜索框事件管理
  late bool _searchBar = false;
  //文本框
  final TextEditingController _searchController = TextEditingController();
  //地图事件管理
  late bool _mapBar = false;
  void searchBar() {
    setState(() {
      _searchBar = !_searchBar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber[800],
        title: HomeappBar(
          searchController: _searchController,
          searchBar: _searchBar,
        ),
      ),
      body: const Center(
        child: HomeBodyListview(),
      ),
    );
  }
}
