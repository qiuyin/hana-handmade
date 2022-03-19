import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class StorySlide extends StatelessWidget {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final imgList = [
      'images/product_list/slide1.webp',
      'images/product_list/slide2.webp',
      'images/product_list/slide3.webp',
    ];
    final imageSliders = imgList
        .map((image) => Image.asset(
              image,
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
          autoPlayInterval: const Duration(seconds: 6),
          autoPlayAnimationDuration: const Duration(seconds: 2),
          enlargeCenterPage: true,
          viewportFraction: 1,
        ),
      ),
    );
  }
}
