import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hana_handmade/common/colors.dart' as colors;

class HanaAppFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 70, right: 70),
      height: 120,
      color: colors.hanaPink.withOpacity(0.66),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              'images/logo.svg',
              semanticsLabel: 'Hana Logo',
              alignment: Alignment.bottomLeft,
            ),
          ),
          Expanded(
            flex: 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: 40),
                Text(
                  '・配送について',
                  style: TextStyle(height: 7, fontSize: 15),
                ),
                Text(
                  '・返品交換について',
                  style: TextStyle(height: 7, fontSize: 15),
                ),
                Text(
                  '・支払いについて',
                  style: TextStyle(height: 7, fontSize: 15),
                ),
                SizedBox(width: 40),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FaIcon(FontAwesomeIcons.line),
                SizedBox(width: 10),
                FaIcon(FontAwesomeIcons.youtube),
                SizedBox(width: 10),
                FaIcon(FontAwesomeIcons.instagram),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
