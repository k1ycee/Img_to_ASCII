import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImageOptions {
  final picker = ImagePicker();
  Future<File> getImageFromCamera() async {
    final picture = await picker.getImage(source: ImageSource.camera);
    final path = File(picture.path);
    return path;
  }

  Future<File> getImageFromGallery() async {
    final picture = await picker.getImage(source: ImageSource.gallery);
    final path = File(picture.path);
    return path;
  }
}
