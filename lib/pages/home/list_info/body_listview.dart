import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

class HomeBodyListview extends StatelessWidget {
  const HomeBodyListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imgs = [
      'assets/topBar1.jpg',
      'assets/topBar2.png',
      'assets/topBar3.jpg',
    ];
    Size size = MediaQuery.of(context).size;
    var padding = MediaQuery.of(context).padding;
    double barheight = (size.height - padding.top - padding.bottom);
    return Container(
      height: barheight,
      width: size.width,
      child: ListView(
        // shrinkWrap: true,
        children: <Widget>[
          //轮播图
          Container(
            height: 200,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(
                  imgs[index],
                  fit: BoxFit.fill,
                );
              },
              itemCount: imgs.length,
              pagination: new SwiperPagination(),
              autoplay: true,
              // control: new SwiperControl(),
            ),
          ),
          const Text("wdwd"),
        ],
      ),
    );
  }
}
