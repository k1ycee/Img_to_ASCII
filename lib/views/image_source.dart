import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:img_to_ASCII/constants/routes.dart';
import 'package:img_to_ASCII/util/locator.dart';
import 'package:img_to_ASCII/util/navigation.dart';
import 'package:img_to_ASCII/view_model/images_vm.dart';
import 'package:img_to_ASCII/widgets/image_source_widget.dart';
import 'package:provider_architecture/provider_architecture.dart';

class ImageSource extends StatefulWidget {
  @override
  _ImageSourceState createState() => _ImageSourceState();
}

class _ImageSourceState extends State<ImageSource> {
  final _nav = locator<NavigationService>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Select an Image Source',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
            ),
            GestureDetector(
              onTap: () => _nav.navigateToReplacing(CameraView),
              child: IMGSRC(
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                source: 'Camera',
                color: Colors.amberAccent[400],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            IMGSRC(
                icon: Icon(Icons.cloud_download, color: Colors.white),
                source: 'Internet',
                color: Colors.greenAccent[200]),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            GestureDetector(
              onTap: () => _nav.navigateToReplacing(GalleryView),
              child: IMGSRC(
                icon: Icon(Icons.add_photo_alternate, color: Colors.white),
                source: 'Gallery',
                color: Colors.blue[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
