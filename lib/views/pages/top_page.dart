import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hana_handmade/common/colors.dart' as colors;

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
  }

  PreferredSizeWidget _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: Material(
        color: colors.hanaPink,
        elevation: 1,
        child: Stack(
          children: [
            Center(
                child: SvgPicture.asset('images/logo.svg',
                    semanticsLabel: 'Hana Logo')),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset('images/search.svg',
                      semanticsLabel: 'search'),
                  SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset('images/cart.svg', semanticsLabel: 'Cart'),
                  SizedBox(
                    width: 18,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('画像'),
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
          Text('新商品画像リスト'),
          Text('カテゴリ'),
        ],
      ),
    );
  }
}
