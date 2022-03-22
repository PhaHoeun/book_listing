import 'package:book_listing/configure/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            context.pushRoute(const PopularRoute());
            context.router.pushNamed('popular');
          },
          child: const Text("Popular"),
        ),
        ElevatedButton(
          onPressed: () {
            // context.router.pushNamed('most-reading');
          },
          child: const Text("Most Reading"),
        ),
      ],
    );
  }
}
