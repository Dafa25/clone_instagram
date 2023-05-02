import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/widget/bublestory.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final List users = [
    "Vinny",
    "Mega",
    "Dara",
    "Silver",
    "Annisa",
    "Faron",
    "Firmansyah",
    "Gifahri",
    "Aldy",
    "Fauzi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(
            Icons.add_box_outlined,
            size: 30,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.favorite_border,
              size: 30,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.send_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BubleStory(
            name: users[index],
          );
        },
      ),
    );
  }
}
