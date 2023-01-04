import 'package:flutter/material.dart';
import 'package:flutter_day19_namedroute/secondScreen.dart';

import 'homeScreen.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false,
        initialRoute: 'second',
        routes: {
      '/': (context) => Home(),
      'second': (context) => Second(),
    }),
  );
}
