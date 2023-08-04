// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      shape: Border(
        bottom: BorderSide(
          color: Colors.grey[300]!,
          width: 1,
        ),
      ),
      title: Row(
        children: [
          Image.asset(
            'assets/images/google_logo.png',
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 5),
            child: Text(
              'News',
              style: TextStyle(
                fontFamily: 'GoogleSans',
                color: Colors.grey[800],
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
          child: Icon(
            Icons.search,
            color: Colors.grey[800],
            size: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
          child: Icon(
            Icons.apps,
            color: Colors.grey[800],
            size: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
        )
      ],
    );
  }
}
