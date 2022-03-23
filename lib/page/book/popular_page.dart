import 'package:flutter/material.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
      // padding: const EdgeInsets.all(50),
      crossAxisSpacing: 30,
      mainAxisSpacing: 20,
      crossAxisCount: 3,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 200,
          height: 70,
          color: Colors.grey[200],
          child: const Center(
            child: Text("Book One"),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 200,
          height: 70,
          color: Colors.grey[200],
          child: const Center(
            child: Text("Book Two"),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 200,
          height: 70,
          color: Colors.grey[200],
          child: const Center(
            child: Text("Book Three"),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 200,
          height: 70,
          color: Colors.grey[200],
          child: const Center(
            child: Text("Book Four"),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 200,
          height: 70,
          color: Colors.grey[200],
          child: const Center(
            child: Text("Book Five"),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 200,
          height: 70,
          color: Colors.grey[200],
          child: const Center(
            child: Text("Book Six"),
          ),
        ),
      ],
    );
  }
}
