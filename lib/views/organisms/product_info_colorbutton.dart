import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final Color itemColor;

  const ColorButton({Key? key, required this.itemColor}) : super(key: key);

  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Material(
        color: Colors.white,
        child: Center(
          child: Ink(
            decoration: ShapeDecoration(
              color: itemColor,
              shape: CircleBorder(),
            ),
            child: SizedBox(
              width: 30,
              height: 30,
              child: IconButton(
                icon: const Icon(Icons.android),
                color: itemColor,
                iconSize: 1,
                hoverColor: itemColor,
                splashRadius: 17,
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
