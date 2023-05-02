// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BubleStory extends StatelessWidget {
  const BubleStory({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.pink,
            child: CircleAvatar(
                radius: 30,
                backgroundImage:
                    NetworkImage("https://i.pravatar.cc/100/?u=$name")),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
