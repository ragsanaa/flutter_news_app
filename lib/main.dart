// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eigth/screens/home_screen.dart';
import 'package:flutter_eigth/widgets/custom_appbar_widget.dart';
import 'package:flutter_eigth/widgets/custom_drawer_widget.dart';

import 'screens/following_screen.dart';
import 'screens/local_news_screen.dart';
import 'screens/top_story_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        drawer: CustomDrawerWidget(),
        backgroundColor: _currentIndex == 0 ? Colors.grey[300] : Colors.white,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(56),
            child: CustomAppBarWidget()),
        body: _getBodyWidget(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 241, 244, 249),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.curtains),
                label: 'For you',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.language),
                label: 'Top stories',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on_outlined),
                label: 'Local',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star_border),
                label: 'Following',
              ),
            ],
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey[800],
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            }),
      ),
    );
  }

  Widget _getBodyWidget(index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return TopStoryScreen();
      case 2:
        return LocalNewsScreen();
      case 3:
        return FollowingScreen();
      default:
        return HomeScreen();
    }
  }
}
