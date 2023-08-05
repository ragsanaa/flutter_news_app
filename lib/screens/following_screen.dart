// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eigth/classes/following.dart';
import 'package:flutter_eigth/screens/manage_local_news_screen.dart';
import 'package:flutter_eigth/widgets/cards_widget.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({super.key});

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: DefaultTabController(
          child: Column(
            children: [
              TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.blue[700],
                labelColor: Colors.blue[700],
                isScrollable: true,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GoogleSans',
                ),
                unselectedLabelColor: Colors.grey[600],
                tabs: [
                  Tab(
                    text: 'Topics & sources',
                  ),
                  Tab(text: 'Saved searches'),
                  Tab(text: 'Saved stories'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ListView(
                      children: [
                        CardsWidget(data[0]),
                        CardsWidget(data[1]),
                        CardsWidget(data[2]),
                      ],
                    ),
                    CardsWidget(data[3]),
                    CardsWidget(data[4]),
                  ],
                ),
              ),
            ],
          ),
          length: 3),
    );
  }
}

List<Following> data = [
  Following(
      title: 'Topics',
      description:
          'When you follow a topic it will appear here. You\'ll also see more related stories in the For You feed.',
      image: 'assets/images/topics.png'),
  Following(
      title: 'Local',
      description: 'When you follow a location it will appear here.',
      image: 'assets/images/local.png',
      isManage: true),
  Following(
      title: 'Sources',
      description:
          'When you follow a source it will appear here. You\'ll also see more stories from that source in the For You feed.',
      image: 'assets/images/sources.png'),
  Following(
      description: 'Your saved searches will appear here.',
      image: 'assets/images/ssearches.png'),
  Following(
      description: 'Your saved stories will appear here.',
      image: 'assets/images/sstories.png'),
  Following(
    description: 'See local news you care about by adding locations',
    image: 'assets/images/local.png',
  ),
];
