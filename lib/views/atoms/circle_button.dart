
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
   final GestureTapCallback onTap;
   final Widget child;

  const CircleButton({Key? key, required this.onTap, required this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material(
      shape: const CircleBorder(),
      color: Colors.white.withOpacity(0.1),
      child: InkWell(
        customBorder: const CircleBorder(),
        hoverColor: Colors.white.withOpacity(0.5),
        onTap: onTap,
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.white.withOpacity(0.1),
          child: child,
        ),
      ),
    );
  }}