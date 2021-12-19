import 'package:flutter/material.dart';
import 'package:hana_handmade/views/pages/top_page.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  await SentryFlutter.init(
    (options) => options
      ..dsn =
          'https://3469c850d0cd4b6286ea7628d981305c@o1067637.ingest.sentry.io/6061420'
      ..environment = 'production', // TODO
    appRunner: () => runApp(MyApp()),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HANA handmade',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TopPage(),
    );
  }
}
