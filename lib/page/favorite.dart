import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text("Favorite Page")),
      body: const Center(
        child: Text("Favorite Page")
      ),
    );
  }
}