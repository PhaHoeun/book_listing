import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favorite Page",
          style: GoogleFonts.getFont('Macondo'),
        ),
      ),
      body: Center(
          child: Text(
        "Favorite Page",
        style: TextStyle(
          color: Colors.indigo[900],
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      )),
    );
  }
}
