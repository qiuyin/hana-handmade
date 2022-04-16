import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hana_handmade/common/colors.dart' as colors;

import 'product_info_colorbutton.dart';

class ProductInfo extends StatefulWidget {
  @override
  _ProductInfoState createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Vanessa Acrylic",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "￥2,000",
            style: TextStyle(
              fontSize: 15,
              color: colors.darkGray,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "単品送料: ￥200",
            style: TextStyle(
              fontSize: 10,
              color: colors.darkGray,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "※複数購入の場合、総送料はカートで再計算し表示される",
            style: TextStyle(
              fontSize: 7,
              color: colors.darkGray,
            ),
          ),
          SizedBox(height: 30),
          Text(
            "COLOR",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              ColorButton(itemColor: Colors.indigo),
              ColorButton(itemColor: Colors.red),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "在庫数:5",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Container(
                height: 30,
                width: 200,
                decoration: BoxDecoration(
                  color: colors.hanaPink,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  "カートに入れる",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                )),
              ),
              SizedBox(width: 30),
              Icon(Icons.favorite_border),
            ],
          ),
          SizedBox(height: 30),
          Text(
            "商品仕様",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            productSpecifications,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}

final productSpecifications = '''

・原材料:水 (鉱水)
・カロリー:【100mlあたり】0kcal
・商品サイズ(高さx奥行x幅):31.2cm×40.1cm×20cm

''';
