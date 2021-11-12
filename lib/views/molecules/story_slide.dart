import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class StorySlide extends StatefulWidget {
  @override
  _StorySlideState createState() => _StorySlideState();
}

class _StorySlideState extends State<StorySlide> {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'images/product_list/slide3.png',
      'images/product_list/slide1.jpeg',
      'images/product_list/slide2.webp',
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Image.asset(
              item,
              fit: BoxFit.contain,
            ))
        .toList();

    return SizedBox(
      height: MediaQuery.of(context).size.height - 60,
      child: CarouselSlider(
        items: imageSliders,
        carouselController: _controller,
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height - 60,
          autoPlay: true,
          enlargeCenterPage: false,
          viewportFraction: 1,
        ),
      ),
    );
  }
}
