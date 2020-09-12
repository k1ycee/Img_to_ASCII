import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IMGSRC extends StatefulWidget {
  final Icon icon;
  final String source;
  final Color color;

  const IMGSRC({Key key, @required this.icon, @required this.source, @required this.color})
      : super(key: key);
  @override
  _IMGSRCState createState() => _IMGSRCState();
}

class _IMGSRCState extends State<IMGSRC> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              widget.icon,
              SizedBox(
                width: MediaQuery.of(context).size.width / 10,
              ),
              Text(
                widget.source,
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
