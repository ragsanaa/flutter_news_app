// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Map<IconData, String> drawerItems = {
  Icons.curtains_rounded: 'For you',
  Icons.language: 'Top stories',
  Icons.location_on_outlined: 'Your local news',
  Icons.star_border: 'Following',
  Icons.flag_outlined: 'U.S.',
  Icons.public: 'World',
  Icons.business_outlined: 'Business',
  Icons.memory_outlined: 'Technology',
  Icons.theaters_outlined: 'Entertainment',
  Icons.directions_bike: 'Sports',
  Icons.science_outlined: 'Science',
  Icons.fitness_center_outlined: 'Health',
  Icons.search: 'Saved searches',
};

List<ListTile> drawerList(Map<IconData, String> list) {
  List<ListTile> drawerList = [];
  for (int i = 0; i < list.length; i++) {
    drawerList.add(ListTile(
      iconColor: Colors.black,
      textColor: Colors.black,
      leading: Icon(
        list.keys.elementAt(i),
      ),
      title: Text(
        list.values.elementAt(i),
        style: TextStyle(
          fontFamily: 'GoogleSans',
        ),
      ),
    ));
  }
  return drawerList;
}
