import 'dart:io';
import 'package:enough_ascii_art/enough_ascii_art.dart';
import 'package:image/image.dart' as img;
import 'package:flutter/material.dart';
import 'package:img_to_ASCII/util/image_picker_options.dart';
import 'package:img_to_ASCII/util/locator.dart';
import 'package:screenshot/screenshot.dart';

class ImagesViewModel extends ChangeNotifier {
  File _selectedImage;
  File get selectedImage => _selectedImage;

  ScreenshotController screenshotController = ScreenshotController();

  File _takenImage;
  File get takenImage => _takenImage;

  String _art;
  String get art => _art;

  String _imgart;
  String get imgart => _imgart;

  final _imgSrc = locator<ImageOptions>();

  Future pickImage() async {
    var picked = await _imgSrc.getImageFromGallery();
    var ascii = convert(picked);
    print('object');
    print(ascii);
    _art = ascii;
    notifyListeners();
  }

  Future takeImage() async {
    var taken = await _imgSrc.getImageFromCamera();
    var ascii = convert(taken);
    print(await taken.length());
    print('object');
    print(ascii);
    _imgart = ascii;
    notifyListeners();
  }
}

String convert(File image) {
  var ascii = img.decodeImage(image.readAsBytesSync());
  var dart = convertImage(ascii,invert: true);
  return dart;
}
