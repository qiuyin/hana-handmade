import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorButton extends StatefulWidget {

  @override
  _ColorButtonState createState() => _ColorButtonState();
}

class _ColorButtonState extends State<ColorButton> {
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
                  color: Colors.purpleAccent,
                  shape: CircleBorder(),
                ),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: IconButton(
                    icon: const Icon(Icons.android),
                    color: Colors.purpleAccent,
                    iconSize: 1,
                    hoverColor: Colors.purpleAccent,
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
                  color: Colors.deepPurpleAccent,
                  shape: CircleBorder(),
                ),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: IconButton(
                    icon: const Icon(Icons.android),
                    color: Colors.deepPurpleAccent,
                    iconSize: 1,
                    hoverColor: Colors.deepPurpleAccent,
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
