import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hana_handmade/common/colors.dart' as colors;
import 'package:hana_handmade/views/organisms/hana_app_bar.dart';
import 'package:hana_handmade/views/organisms/hana_app_footer.dart';
import 'package:hana_handmade/views/organisms/hoverable_image.dart';
import 'package:routemaster/routemaster.dart';

class ProductPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HanaAppBar(),
      body: _body(context),
    );
  }
  final item = [
    'images/item/商品s1.jpg',
    'images/item/商品s2.jpg',
    'images/item/商品s3.jpg',
    'images/item/商品s4.jpg',
    'images/item/商品s5.jpg',
  ];

  Widget _body(BuildContext context) {
    const divider = Divider(
      thickness: 0.3,
      color: colors.darkGray,
      indent: 50,
      endIndent: 50,
    );

    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.asset(
                        'images/item_list/商品s1.jpg',
                      ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 430,
                          child: GridView.count(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            padding: const EdgeInsets.all(10.0),
                            crossAxisCount: 5,
                            children: List.generate(8, (index) {
                              return Image.asset('images/item_list/商品s${(index+1)%5+1}.jpg');
                            },),
                          ),
                        ),
                        ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.greenAccent,
                    child: Text("商品価格"),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: Text("商品説明"),
            ),
            divider,
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "おすすめ商品",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  RecommendItemsContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        child:
        Container(
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

class ItemSlide2 extends StatelessWidget {
  ItemSlide2(this._controller);

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
                child: HoverableImage(
                    imageUrl1: image, imageUrl2: 'images/newitem_list/2.jpg'),
              ),
            ))
        .toList();
    return CarouselSlider(
      items: itemSliders,
      carouselController: _controller,
      options: CarouselOptions(
        height: 400,
        autoPlay: false,
        enlargeCenterPage: false,
        viewportFraction: 0.2,
      ),
    );
  }
}

class RecommendItemsContainer extends StatelessWidget {
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => _controller.previousPage(),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        Flexible(child: ItemSlide2(_controller)),
        IconButton(
          onPressed: () => _controller.nextPage(),
          icon: Icon(
            Icons.arrow_forward_ios,
          ),
        ),
      ],
    );
  }
}


