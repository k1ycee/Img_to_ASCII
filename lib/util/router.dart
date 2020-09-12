import 'package:flutter/material.dart';
import 'package:img_to_ASCII/constants/routes.dart';
import 'package:img_to_ASCII/views/camera.dart';
import 'package:img_to_ASCII/views/gallery.dart';
import 'package:img_to_ASCII/views/on_boaring.dart';
import 'package:img_to_ASCII/views/splash_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnboardView:
      return _getPageRoute(routeName: settings.name, view: Onboarding());
    case SplashView: 
      return _getPageRoute(routeName: settings.name, view: SplashScreen());
    case CameraView:
      return _getPageRoute(routeName: settings.name, view: Cameras());
    case GalleryView:
      return _getPageRoute(routeName: settings.name, view: Gallery());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

PageRoute _getPageRoute({String routeName, Widget view}) {
  return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => view);
}