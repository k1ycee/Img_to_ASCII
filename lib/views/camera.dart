import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:img_to_ASCII/view_model/images_vm.dart';
import 'package:provider_architecture/_viewmodel_provider.dart';

class Cameras extends StatefulWidget {
  @override
  _CamerasState createState() => _CamerasState();
}

class _CamerasState extends State<Cameras> {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<ImagesViewModel>.withConsumer(
      viewModelBuilder: () => ImagesViewModel(),
      builder: (context, model, _) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: GestureDetector(
            onTap: () => model.takeImage(),
            child: model.imgart == null
                ? Container(
                    child: Center(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 2,
                          ),
                          Text(
                            'Tap Here to take a Picture',
                            style: GoogleFonts.poppins(color: Colors.grey[200]),
                          ),
                          Icon(Icons.add_a_photo, color: Colors.grey[200]),
                        ],
                      ),
                    ),
                  )
                : Container(
                    child: Center(
                      child: AspectRatio(
                        aspectRatio: 60.0 / 80.0,
                        child: Text(
                          model.imgart == null ? "converting..." : model.imgart,
                          style: TextStyle(color: Colors.white),
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
