import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
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
  ItemSlide(this._controller);

  final CarouselController _controller;

  @override
  Widget build(BuildContext context) {
    final itemList = [
      'images/newitem_list/1.jpg',
      'images/newitem_list/2.jpg',
      'images/newitem_list/3.jpg',
      'images/newitem_list/4.jpg',
      'images/newitem_list/5.jpg',
    ];
    final itemSliders = itemList
        .map((image) => Padding(
              padding: const EdgeInsets.all(13.0),
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ))
        .toList();
    return SizedBox(
      height: 400,
      child: CarouselSlider(
        items: itemSliders,
        carouselController: _controller,
        options: CarouselOptions(
          height: 400,
          autoPlay: false,
          enlargeCenterPage: false,
          viewportFraction: 0.33,
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
          icon: Icon(
            Icons.arrow_left,
          ),
        ),
        Flexible(child: ItemSlide(_controller)),
        IconButton(
          onPressed: () => _controller.nextPage(),
          icon: Icon(
            Icons.arrow_right,
          ),
        ),
      ],
    );
  }
}
