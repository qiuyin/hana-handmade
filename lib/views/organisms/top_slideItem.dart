import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class Top_SlideItem extends StatefulWidget {
  final imageList;

  const Top_SlideItem({Key? key, required this.imageList}) : super(key: key);
  @override
  _Top_SlideItemState createState() => _Top_SlideItemState();
}

class _Top_SlideItemState extends State<Top_SlideItem> {
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
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white.withOpacity(0.2),
                child: IconButton(
                  iconSize: 30,
                  onPressed: imageIndex == 0
                      ? () {}
                      : () => setState(() {
                            imageIndex = imageIndex - 1;
                          }),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white.withOpacity(0.2),
                child: IconButton(
                  iconSize: 30,
                  onPressed: imageIndex == widget.imageList.length - 1
                      ? () {}
                      : () => setState(() {
                            imageIndex = imageIndex + 1;
                          }),
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
