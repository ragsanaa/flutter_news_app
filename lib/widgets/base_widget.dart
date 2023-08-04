// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eigth/screens/home_screen.dart';
import 'package:flutter_eigth/widgets/appbar_widget.dart';
import 'package:flutter_eigth/widgets/buttom_navigation_bar_widget.dart';
import 'package:flutter_eigth/widgets/drawer_widget.dart';

import '../screens/following_screen.dart';
import '../screens/local_news_screen.dart';
import '../screens/top_story_screen.dart';

int index = 0;
bool emptyScreen = false;

class BaseWidget extends StatefulWidget {
  final int screenIndex;
  final bool isEmptyScreen;
  BaseWidget(
      {super.key, required this.screenIndex, this.isEmptyScreen = false}) {
    index = screenIndex;
    emptyScreen = isEmptyScreen;
  }

  @override
  State<BaseWidget> createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  int _currentIndex = index;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        drawer: DrawerWidget(
          selectedIndex: _currentIndex,
        ),
        backgroundColor: _currentIndex == 0 ? Colors.grey[300] : Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: AppBarWidget(),
        ),
        body: emptyScreen
            ? Center(
                child: Text('Empty Screen'),
              )
            : _getBodyWidget(_currentIndex),
        bottomNavigationBar: BottomNavigationBarWidget(
          currentIndex: _currentIndex < 4 ? _currentIndex : 0,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
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
