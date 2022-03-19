import 'package:flutter/material.dart';
import 'package:hana_handmade/views/pages/product_page.dart';
import 'package:hana_handmade/views/pages/top_page.dart';
import 'package:routemaster/routemaster.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

final routes = RouteMap(routes: {
  '/': (_) => MaterialPage(
        child: TopPage(),
      ),
  '/product': (_) => MaterialPage(child: ProductPage()),
});

Future<void> main() async {
  await SentryFlutter.init(
    (options) => options
      ..dsn =
          'https://3469c850d0cd4b6286ea7628d981305c@o1067637.ingest.sentry.io/6061420'
      ..environment = 'production', // TODO
    appRunner: () => runApp(
      MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: RoutemasterDelegate(routesBuilder: (context) => routes),
        routeInformationParser: RoutemasterParser(),
      ),
    ),
  );
}

