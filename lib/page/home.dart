import 'package:book_listing/page/book.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Home Page"),
      ),
      bottomNavigationBar: Container(
        height: 70,
        width: double.infinity,
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BookPage()));
              },
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.book_online),
                    Text("Book"),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.favorite_outline),
                  Text("Favorite"),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.person_outline),
                  Text("Profile"),
                ],
              ),
            ),
            // TextButton(onPressed: () {}, child: const Text("Book")),
            // TextButton(onPressed: () {}, child: const Text("Favorite")),
            // TextButton(onPressed: () {}, child: const Text("Profile")),
          ],
        ),
      ),
    );
  }
}
