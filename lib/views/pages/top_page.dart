import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hana_handmade/common/colors.dart' as colors;
import 'package:hana_handmade/common/colors.dart';
import 'package:hana_handmade/views/molecules/story_slide.dart';
import 'package:hana_handmade/views/organisms/hana_app_bar.dart';
import 'package:hana_handmade/views/organisms/hana_app_footer.dart';
import 'package:hana_handmade/views/organisms/hoverable_image.dart';
import 'package:routemaster/routemaster.dart';

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

    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
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
            Row(
              children: [
                divider,
                SelectableText(
                  'カテゴリ',
                  strutStyle: StrutStyle(height: 1.5),
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                ),
                divider,
              ],
            ),
            Container(
              color: gray,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  if (index.isEven) {
                    return Container(
                        padding: EdgeInsets.all(50),
                        height: 350,
                        child: Row(children: [
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'LOOK & FEEL',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    longString,
                                    strutStyle: StrutStyle(height: 1.3),
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              'images/newitem_list/2.jpg',
                            ),
                          ),
                        ]));
                  } else {
                    return Container(
                        padding: EdgeInsets.all(50),
                        height: 300,
                        child: Row(children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              'images/newitem_list/1.jpg',
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Text('カテゴリー A'),
                            ),
                          ),
                        ]));
                  }
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ],
        ),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Spacer(),
              HanaAppFooter(),
            ],
          ),
        ),
      )
    ]);
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
              child: GestureDetector(
                onTap: () => Routemaster.of(context).push('/product'),
                child: Stack(
                  children: [
                  HoverableImage(
                      imageUrl1: image, imageUrl2: 'images/newitem_list/2.jpg'),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: Icon(
                          Icons.favorite_border),
                    ),
                  ],
                ),
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

final longString = '''


NATURAL & LIGHTWEIGHT
Our mink eyelashes are incredibly natural looking, 
ultra soft and comfortable. 
Compared to eyelash extensions, our false eyelashes are
safer, more beautiful, 
and more convenient. Put any pair 
on in the morning and take them off at night.
''';
