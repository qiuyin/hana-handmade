import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hana_handmade/common/colors.dart' as colors;

class HanaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Size preferredSize = Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: preferredSize,
        child: Material(
          color: colors.hanaPink,
          elevation: 1,
          child: Stack(
            children: [
              Center(
                  child: SvgPicture.asset('images/logo.svg',
                      semanticsLabel: 'Hana Logo')),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset('images/search.svg',
                        semanticsLabel: 'search'),
                    SizedBox(
                      width: 8,
                    ),
                    SvgPicture.asset('images/cart.svg', semanticsLabel: 'Cart'),
                    SizedBox(
                      width: 18,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
