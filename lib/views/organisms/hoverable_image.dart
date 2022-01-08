import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HoverableImage extends StatefulWidget {
  final String imageUrl1;
  final String imageUrl2;
  const HoverableImage({this.imageUrl1, this.imageUrl2});

  @override
  _HoverableImageState createState() => _HoverableImageState();
}

class _HoverableImageState extends State<HoverableImage> {
  String image;

  @override
  void initState() {
    image = widget.imageUrl1;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (PointerEnterEvent details) {
        setState(() {
          image = widget.imageUrl2;
        });
      },
      onExit: (PointerExitEvent details) {
        setState(() {
          image = widget.imageUrl1;
        });
      },
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}
