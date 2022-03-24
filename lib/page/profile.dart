import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Profile Page"),
          // bottom: const TabBar(
          //   tabs: [
          //     Tab(text: ("Numbers")),
          //     Tab(text: ("Relationship")),
          //     Tab(text: ("Word")),
          //     Tab(text: ("Sentence"))
          //   ],
          // ),
        ),
        body: Center(
          child: Text(
            "Profile Page",
            style: TextStyle(
              color: Colors.indigo[900],
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
        // const TabBarView(
        //   children: [
        //     Text("Number"),
        //     Text("Relationship"),
        //     Text("Word"),
        //     Text("Sentence"),
        //   ],
        // )
      ),
    );
  }
}
