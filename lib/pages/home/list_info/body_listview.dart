import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeBodyListview extends StatelessWidget {
  const HomeBodyListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var padding = MediaQuery.of(context).padding;
    double barheight = (size.height - padding.top);
    return SizedBox(
      height: barheight,
      width: size.width,
      child: ListView(
        children: <Widget>[
          //轮播图
          Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                "assets/topBar1.jpg",
                fit: BoxFit.fill,
              );
            },
            itemCount: 1,
            viewportFraction: 0.8,
            scale: 0.9,
          ),
          const Text("wdwd"),
        ],
      ),
    );
  }
}
