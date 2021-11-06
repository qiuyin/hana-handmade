import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'common/colors.dart' as colors;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(),
    );
  }

  PreferredSizeWidget _appBar() {
    return PreferredSize(
        preferredSize: Size.fromHeight(60),
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
                    Icon(Icons.search),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.shopping_cart),
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
