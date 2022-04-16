import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hana_handmade/common/colors.dart' as colors;
import 'package:hana_handmade/views/organisms/hana_app_bar.dart';
import 'package:hana_handmade/views/organisms/hana_app_footer.dart';
import 'package:hana_handmade/views/organisms/hoverable_image.dart';
import 'package:hana_handmade/views/organisms/product_info.dart';
import 'package:hana_handmade/views/organisms/product_image.dart';
import 'package:routemaster/routemaster.dart';

class ProductPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HanaAppBar(),
      body: _body(context),
    );
  }

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
                ProductImage(),
                ProductInfo(),
              ],
            ),
            Container(
              width: double.infinity,

              child: Text(productIntroduction),

            ),
            divider,
            Container(
              width: double.infinity,

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










final productIntroduction
= '''


ハンドメイドのサニタリーケースです。
イヤホン、リップ、ヘアアクセサリー等小物入れにもいいです。



〈サイズ〉
縦  約11cm
横  約12cm


<素材>
表：リバティ
裏：キルティング




以下の内容をご確認の上、ご購入お願いします。
ーーーーーーーーーーーーーーーーーーーーーー
★写真の品が届きます。

★画像は撮影環境でイメージが違って見える場合がございますのでご了承の上でご購入下さいませ。

★素人ハンドメイドですので、既製品の様に完璧ではありません。
家庭用ミシンで製作しております。
丁寧にお作りしていますが、多少のずれ、縫製の甘さなどあるかもしれません。
ご理解いただける方のみご購入お願いしますm(_ _)m


★チャコペンの痕が残っていることもあるかもしれませんが、
消えるチャコペンを使っております。


★ハンドメイドということを御理解の上、既製品のような完璧を求める方、神経質な方のご購入はご遠慮下さい!!!

★出品しているものは、急に削除・再出品することがございます。いいねしてくださった方には大変申し訳ありませんが、ご理解の程宜しくお願い致します。

★出品中のハンドメイド品に関しまして、1回の注文につき、2点以上ご購入の場合、
2点目から「1点追加毎に100円」お値引き致します。
コメントいただければ、専用ページにてご案内いたします。

★他にも多数出品しておりますので、ぜひ一度ご覧ください^^
#0909❤ワクワク

 

#サニタリーケース
#ケース
#小物入れ
#リバティ小物



''';
