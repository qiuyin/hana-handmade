import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hana_handmade/common/colors.dart' as colors;
import 'package:hana_handmade/views/organisms/product_info_colorbutton.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(30),
          height: 800,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Vanessa Acrylic',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),

              Text(
                '¥2,000(税込)',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black54,
                ),
              ),
              Text(
                '単品送料: ¥200',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
              Text(
                '※複数購入の場合、総送料はカートで再計算し表示される',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'COLOR',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  ColorButton(itemColor: Colors.red,),
                  ColorButton(itemColor: Colors.grey,),
                ],
              ),
              SizedBox(height: 10,),
              Text(
                '在庫数: 5',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      color: colors.hanaPink,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('カートに入れる')),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.favorite_border),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                productspecifications,
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
    );
  }
}

final productspecifications = '''

商品仕様
・Diameter: 3.1 inches/8 cm
・Monogram canvas
・Gold-cold hardware
・Vivienne mascot illustration
・Snap hook closure
・Dual function as a key and bag charm 
Read less


''';
