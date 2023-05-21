import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class ImageSliders extends StatefulWidget {
  const ImageSliders({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ImageSliders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ImageSlider in Flutter"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: AnotherCarousel(
              images: const [
                AssetImage("image/2.jpg"),
                AssetImage("image/3.jpg"),
                AssetImage("image/download.png"),
                // we have display image from netwrok as well
                NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg")
              ],
              dotSize: 6,
              indicatorBgPadding: 5.0,
            ),
          )
        ],
      ),
    );
  }
}
