import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({Key? key, @queryParam this.author}) : super(key: key);
  final String? author;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Center(
        child: Text("Most Reading Author: $author"),
      ),
    );
  }
}
