import 'package:flutter/material.dart';
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
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('画像'),
          Text('NEW PRODUCTS'),
          Text('新商品画像リスト'),
          Text('カテゴリ'),
        ],
      ),
    );
  }
}
