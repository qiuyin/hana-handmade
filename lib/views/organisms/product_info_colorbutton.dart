import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorBouutn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Material(
            color: Colors.white,
            child: Center(
              child: Ink(
                decoration: const ShapeDecoration(
                  color: Colors.red,
                  shape: CircleBorder(),
                ),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: IconButton(
                    icon: const Icon(Icons.android),
                    color: Colors.red,
                    iconSize: 1,
                    hoverColor: Colors.red,
                    splashRadius: 17,
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Material(
            color: Colors.white,
            child: Center(
              child: Ink(
                decoration: const ShapeDecoration(
                  color: Colors.lightBlue,
                  shape: CircleBorder(),
                ),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: IconButton(
                    icon: const Icon(Icons.android),
                    color: Colors.lightBlue,
                    iconSize: 1,
                    hoverColor: Colors.lightBlue,
                    splashRadius: 17,
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
