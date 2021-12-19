import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HanaAppFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 70, right: 70),
      height: 200,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: SvgPicture.asset(
              'images/logo.svg',
              semanticsLabel: 'Hana Logo',
              alignment: Alignment.bottomLeft,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'FOLLOW US',
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('images/SNS_list/youtube.png'),
                    SizedBox(width: 10),
                    Image.asset('images/SNS_list/Instagram.png'),
                    SizedBox(width: 10),
                    Image.asset('images/SNS_list/g-mail.png'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
