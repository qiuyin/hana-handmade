import 'package:flutter/material.dart';

class  ProductImage extends StatefulWidget {


  @override
  _ProductImageState createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int imageIndex = 0;

  final itemList2 = [
    'images/item/1.jpg',
    'images/item/2.jpg',
    'images/item/3.jpg',
    'images/item/4.jpg',
    'images/item/5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(itemList2[imageIndex]),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white.withOpacity(0.4),
                    child: IconButton(
                      iconSize: 30,
                      onPressed: imageIndex == 0 ? null : () => this.setState(() {
                        imageIndex = imageIndex -1;
                      }),

                      icon: Icon(Icons.arrow_back_ios,color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white.withOpacity(0.4),
                    child: IconButton(
                      iconSize: 30,
                      onPressed: imageIndex == itemList2.length -1 ? null : () => this.setState(() {
                        imageIndex = imageIndex +1;
                      }),

                      icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 430,
              width: double.infinity,
              child: GridView.count(
                padding: const EdgeInsets.all(10.0),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 5,
                children: List.generate(
                  itemList2.length,
                      (index) {
                    return Image.asset(
                        'images/item/${(index + 1) % 5 + 1}.jpg');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
