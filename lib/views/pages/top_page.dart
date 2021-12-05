import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hana_handmade/common/colors.dart' as colors;
import 'package:hana_handmade/views/molecules/story_slide.dart';
import 'package:hana_handmade/views/organisms/hana_app_bar.dart';

class TopPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HanaAppBar(),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    const divider = const Expanded(
      child: Divider(
        thickness: 0.3,
        color: colors.darkGray,
        indent: 24,
        endIndent: 24,
      ),
    );

    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StorySlide(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                divider,
                SelectableText(
                  '新商品',
                  strutStyle: StrutStyle(height: 1.5),
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                ),
                divider,
              ],
            ),
            SizedBox(
              height: 10,
            ),
            NewItemsContainer(),
            Text('カテゴリ'),
          ],
        ),
      ),
    );
  }
}

class ItemSlide extends StatelessWidget {
  final CarouselController _controller;
  ItemSlide(this._controller);

  @override
  Widget build(BuildContext context) {
    final newitemimgList = [
      'images/newitem_list/商品1.jpg',
      'images/newitem_list/商品2.jpg',
      'images/newitem_list/商品3.jpg',
    ];

    final image = newitemimgList
        .map((image) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ))
        .toList();

    return SizedBox(
      height: 400,
      child: CarouselSlider(
        items: image,
        carouselController: _controller,
        options: CarouselOptions(
          height: 400,
          autoPlay: false,
          enlargeCenterPage: false,
          viewportFraction: 0.333,
        ),
      ),
    );
  }
}

class NewItemsContainer extends StatelessWidget {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => _controller.previousPage(),
          icon: const Icon(Icons.arrow_left),
        ),
        Flexible(child: ItemSlide(_controller)),
        IconButton(
          onPressed: () => _controller.nextPage(),
          icon: const Icon(Icons.arrow_right),
        ),
      ],
    );
  }
}
