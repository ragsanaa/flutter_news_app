// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  BottomNavigationBarWidget({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 241, 244, 249),
      type: BottomNavigationBarType.fixed,
      items: List.generate(
        bottomBarItems.length,
        (index) => bottomBarItemCreator(
          bottomBarItems.values.elementAt(index),
          bottomBarItems.keys.elementAt(index),
          currentIndex == index,
        ),
      ),
      selectedItemColor: Colors.grey[800],
      unselectedItemColor: Colors.grey[800],
      currentIndex: currentIndex,
      onTap: onTap,
    );
  }

  BottomNavigationBarItem bottomBarItemCreator(
    IconData icon,
    String label,
    bool isSelected,
  ) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.all(5),
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isSelected ? Colors.blue[100] : Colors.transparent,
        ),
        child: Icon(icon),
      ),
      label: label,
    );
  }

  Map<String, IconData> bottomBarItems = {
    'For you': Icons.curtains_rounded,
    'Top stories': Icons.language,
    'Local': Icons.location_on_outlined,
    'Following': Icons.star_border,
  };
}
