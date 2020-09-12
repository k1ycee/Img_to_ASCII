import 'package:flutter/material.dart';
import 'package:img_to_ASCII/util/locator.dart';
import 'package:img_to_ASCII/util/navigation.dart';
import 'package:img_to_ASCII/util/router.dart';
import 'package:img_to_ASCII/views/image_source.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageSource(),
      navigatorKey: locator<NavigationService>().navigationKey,
      onGenerateRoute: generateRoute,
    );
  }
}

