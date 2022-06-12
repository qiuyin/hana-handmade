import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hana_handmade/views/atoms/circle_button.dart';
import 'package:routemaster/routemaster.dart';

class TopSlideItem extends StatefulWidget {
  final imageList;

  const TopSlideItem({Key? key, required this.imageList}) : super(key: key);
  @override
  _TopSlideItemState createState() => _TopSlideItemState();
}

class _TopSlideItemState extends State<TopSlideItem> {
  int imageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(13.0),
      child: GestureDetector(
        onTap: () => Routemaster.of(context).push('/product'),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(widget.imageList[imageIndex]),
            Positioned(
              top: 20,
              right: 20,
              child: Icon(Icons.favorite_border),
            ),
            Positioned(
              left: 0,
              child: CircleButton(onTap: imageIndex == 0
                  ? () {}
                  : () => setState(
                    () {
                  imageIndex = imageIndex - 1;
                },
              ), child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey.withOpacity(0.3),
            ),
              ),),),
            Positioned(
              right: 0,
              child:  CircleButton(onTap: imageIndex == widget.imageList.length - 1
                  ? () {}
                  : () => setState(() {
                imageIndex = imageIndex + 1;
              }), child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.withOpacity(0.3),
              ),),
            ),
          ],
        ),
      ),
    ));
  }
}
