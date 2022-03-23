// import 'package:book_listing/configure/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Page"),
      ),
      body: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 15),
                child: ElevatedButton(
                  onPressed: () {
                    // context.pushRoute(const PopularRoute());
                    context.router.pushNamed('popular');
                  },
                  child: const Text("Popular"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: ElevatedButton(
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
