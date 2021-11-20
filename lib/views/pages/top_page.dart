import 'package:flutter/material.dart';
import 'package:hana_handmade/common/colors.dart' as colors;
import 'package:hana_handmade/views/organisms/hana_app_bar.dart';

class TopPage extends StatelessWidget {
  @override
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
