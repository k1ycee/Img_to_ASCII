import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:img_to_ASCII/view_model/images_vm.dart';
import 'package:provider_architecture/_viewmodel_provider.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<ImagesViewModel>.withConsumer(
      viewModelBuilder: () => ImagesViewModel(),
      builder: (context, model, _) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: GestureDetector(
            onTap: () => model.pickImage(),
            child: model.art == null
                ? Container(
                    height: MediaQuery.of(context).size.height,
                    // color: Colors.amber,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 2,
                          ),
                          Text(
                            'Tap Here to take a Picture',
                            style: GoogleFonts.poppins(color: Colors.grey[300]),
                          ),
                          Icon(Icons.add_a_photo, color: Colors.grey[300]),
                        ],
                      ),
                    ),
                  )
                : Container(
                    // alignment: Alignment.center,
                    // height: 400,
                    // width: 300,
                    child: Center(
                      child: AspectRatio(
                        aspectRatio: 60.0 / 80.0,
                        child: Text(
                          model.art,
                          style: TextStyle(color: Colors.white),
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
