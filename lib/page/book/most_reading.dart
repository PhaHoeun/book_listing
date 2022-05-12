import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MostReading extends StatelessWidget {
  const MostReading({Key? key, @queryParam this.author}) : super(key: key);
  final String? author;

  @override
  Widget build(BuildContext context) {
    return author == null
        ? GridView.count(
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
                  child: Text("Book A, Author: jonh"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                width: 200,
                height: 70,
                color: Colors.grey[200],
                child: const Center(
                  child: Text("Book B, Author: Vireak"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                width: 200,
                height: 70,
                color: Colors.grey[200],
                child: const Center(
                  child: Text("Book C, Author: B Tola"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                width: 200,
                height: 70,
                color: Colors.grey[200],
                child: const Center(
                  child: Text("Book D, Author: jonh"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                width: 200,
                height: 70,
                color: Colors.grey[200],
                child: const Center(
                  child: Text("Book E, Author: Vireak"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                width: 200,
                height: 70,
                color: Colors.grey[200],
                child: const Center(
                  child: Text("Book F, Author: jonh"),
                ),
              ),
            ],
          )
        : GridView.count(
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
                child: Center(
                  child: Text("Book A, Author: $author"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                width: 200,
                height: 70,
                color: Colors.grey[200],
                child: Center(
                  child: Text("Book D, Author: $author"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                width: 200,
                height: 70,
                color: Colors.grey[200],
                child: Center(
                  child: Text("Book F, Author: $author"),
                ),
              ),
            ],
          );
  }
}
