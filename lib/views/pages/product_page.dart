import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hana_handmade/views/organisms/hana_app_bar.dart';

class ProductPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HanaAppBar(),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Text("product");
  }
}
