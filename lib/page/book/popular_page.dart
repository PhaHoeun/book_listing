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
          child: Center(
            child: Text(
              "Book One",
              style: TextStyle(
                color: Colors.indigo[900],
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 200,
          height: 70,
          color: Colors.grey[200],
          child: Center(
            child: Text(
              "Book Two",
              style: TextStyle(
                color: Colors.indigo[900],
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 200,
          height: 70,
          color: Colors.grey[200],
          child: Center(
            child: Text(
              "Book Three",
              style: TextStyle(
                color: Colors.indigo[900],
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 200,
          height: 70,
          color: Colors.grey[200],
          child: Center(
            child: Text(
              "Book Four",
              style: TextStyle(
                color: Colors.indigo[900],
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 200,
          height: 70,
          color: Colors.grey[200],
          child: Center(
            child: Text(
              "Book Five",
              style: TextStyle(
                color: Colors.indigo[900],
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 200,
          height: 70,
          color: Colors.grey[200],
          child: Center(
            child: Text(
              "Book Six",
              style: TextStyle(
                color: Colors.indigo[900],
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
