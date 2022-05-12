// import 'package:book_listing/configure/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Book Page",
          style: GoogleFonts.getFont('Macondo'),
        ),
      ),
      body: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo[900],
                    padding: const EdgeInsets.only(left: 35, right: 35),
                  ),
                  onPressed: () {
                    // context.pushRoute(const PopularRoute());
                    context.router.pushNamed('popular');
                  },
                  child: const Center(child: Text("Popular")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo[900],
                  ),
                  onPressed: () {
                    context.router.pushNamed('most-reading');
                  },
                  child: const Text("Most Reading"),
                ),
              )
            ],
          ),
          const Expanded(child: AutoRouter())
        ],
      ),
    );
  }
}
