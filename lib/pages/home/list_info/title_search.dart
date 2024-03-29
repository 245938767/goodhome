import 'package:flutter/material.dart';

class HomeappBar extends StatefulWidget {
  HomeappBar(
      {Key? key, required this.searchController, required this.searchBar})
      : super(key: key);
  final TextEditingController searchController;
  late final searchBar;

  @override
  _HomeappBarState createState() => _HomeappBarState();
}

class _HomeappBarState extends State<HomeappBar> {
  final FocusNode _commentFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var padding = MediaQuery.of(context).padding;
    double barheight = 55;
    return SizedBox(
      width: size.width,
      height: barheight,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: barheight / 5,
            child: const Icon(Icons.location_pin),
          ),
          Positioned(
            top: barheight / 5,
            left: 25,
            child: const Text(
              "北京",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Positioned(
            top: 5,
            left: size.width / 4.5,
            child: Container(
              padding: const EdgeInsets.only(right: 5, left: 0),
              height: barheight / 1.4,
              width: size.width / 1.9,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular((50.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.search)),
                  ),
                  Expanded(
                    flex: 4,
                    child: TextField(
                      controller: widget.searchController,
                      focusNode: _commentFocus,
                      decoration: const InputDecoration(
                          hintText: "请输入", border: InputBorder.none),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {
                        widget.searchController.text = "";
                        setState(() {
                          _commentFocus.unfocus();
                        });
                      },
                      icon: const Icon(Icons.close),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.map_outlined)),
          ),
        ],
      ),
    );
  }
}
